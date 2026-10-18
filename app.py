import psycopg
from psycopg import sql
import pandas as pd
import os
from dotenv import load_dotenv
import yfinance as yf
from flask import Flask, render_template, request, jsonify

load_dotenv()

app = Flask(__name__)

DATABASE_URL = os.environ.get("DATABASE_URL")

def FVG(df):
    df = df.copy()

    candle1_high = df["High"].shift(2)
    candle1_low = df["Low"].shift(2)

    candle3_high = df["High"]
    candle3_low = df["Low"]

    df["FVG_Type"] = None
    df["FVG_High"] = float("nan")
    df["FVG_Lower"] = float("nan")
    df["FVG_Midpoint"] = float("nan")

    bullish = candle1_high < candle3_low
    bearish = candle1_high > candle3_low

    df.loc[bullish, "FVG_Type"] = "Bullish"
    df.loc[bullish, "FVG_Lower"] = candle1_high[bullish]
    df.loc[bullish, "FVG_High"] = candle1_low[bullish]

    df.loc[bearish, "FVG_Type"] = "Bearish"
    df.loc[bearish, "FVG_Lower"] = candle1_high[bearish]
    df.loc[bearish, "FVG_High"] = candle1_low[bearish]

    df["FVG_Midpoint"] = (
        df["FVG_Lower"] + df["FVG_High"] 
    ) / 2

    return df

def get_db_connection():
    if not DATABASE_URL:
        raise RuntimeError("DATABASE_URL is not configured")

    return psycopg.connect(DATABASE_URL)


@app.route("/")
def dashboard():
    return render_template("dashboard.html")

@app.route("/downloads")
def download():
    return render_template("download.html")

@app.route("/api/health")
def health():
    try:
        with get_db_connection() as conn:
            with conn.cursor() as cur:
                cur.execute("SELECT 1")
                cur.fetchone()

        return jsonify({
            "status": "connected",
            "database": "Neon PostgreSQL"
        })

    except Exception:
        app.logger.exception("Database connection failed")

        return jsonify({
            "status": "error",
            "message": "Database connection failed"
        }), 500


@app.route("/api/eurusd")
def eurusd():
    try:
        df = yf.download(
            "EURUSD=X",
            period="1d",
            interval="1m",
            progress=False,
            auto_adjust=False,
            multi_level_index=False
        )

        if df.empty:
            return jsonify({"error": "No market data available"}), 503

        latest = df.iloc[-1]

        return jsonify({
            "time": df.index[-1].isoformat(),
            "Open": float(latest["Open"]),
            "High": float(latest["High"]),
            "Close": float(latest["Close"])
        })

    except Exception as error:
        app.logger.exception("Failed to retrieve EUR/USD data")

        return jsonify({
            "msg": "Unable to retrieve market data",
            "error": str(error),
            "type": type(error).__name__
        }), 502


@app.route("/api/gold")
def gold():
    try:
        df = yf.download(
            "GC=F",
            period="1d",
            interval="1m",
            progress=False,
            auto_adjust=False,
            multi_level_index=False
        )

        if df.empty:
            return jsonify({"error": "No market data available"}), 503

        latest = df.iloc[-1]

        return jsonify({
            "time": df.index[-1].isoformat(),
            "Open": float(latest["Open"]),
            "High": float(latest["High"]),
            "Close": float(latest["Close"])
        })

    except Exception as error:
        app.logger.exception("Failed to retrieve gold data")

        return jsonify({
            "msg": "Unable to retrieve market data",
            "error": str(error),
            "type": type(error).__name__
        }), 502


@app.route("/api/btc")
def btc():
    try:
        df = yf.download(
            "BTC-USD",
            period="1d",
            interval="1m",
            progress=False,
            auto_adjust=False,
            multi_level_index=False
        )

        if df.empty:
            return jsonify({"error": "No market data available"}), 503

        latest = df.iloc[-1]

        return jsonify({
            "time": df.index[-1].isoformat(),
            "Open": float(latest["Open"]),
            "High": float(latest["High"]),
            "Close": float(latest["Close"])
        })

    except Exception as error:
        app.logger.exception("Failed to retrieve BTC data")

        return jsonify({
            "msg": "Unable to retrieve market data",
            "error": str(error),
            "type": type(error).__name__
        }), 502


@app.route("/Historical")
def Historical():
    with get_db_connection() as conn:
        with conn.cursor() as cur:
            cur.execute("""
                SELECT schema_name
                FROM information_schema.schemata
            """)
            schemas = cur.fetchall()

            cur.execute("""
                SELECT table_name
                FROM information_schema.tables
                WHERE table_schema = 'HistoricalStockData'
            """)
            Tables = cur.fetchall()

    return render_template(
        "Historical.html",
        Tables=Tables,
        schemas=schemas
    )


@app.route("/select-stock", methods=["POST"])
def select_table():
    table = request.form["stock"]

    with get_db_connection() as conn:
        with conn.cursor() as cur:
            query = sql.SQL(
                'SELECT * FROM {}.{}'
            ).format(
                sql.Identifier("HistoricalStockData"),
                sql.Identifier(table)
            )

            cur.execute(query)

            rows = cur.fetchall()
            columns = [desc.name for desc in cur.description]

    return render_template(
        "table.html",
        columns=columns,
        rows=rows
    )

@app.route("/api/eurusd/FVG")
def EURUSDFVG():
    try:
        df = yf.download(
            "EURUSD=X",
            period="5d",
            interval="1m",
            progress=False,
            auto_adjust=False,
            multi_level_index=False
        )

        if df.empty:
            return jsonify({"error": "No market data available"}), 503

        result = FVG(df)
        result = result[result["FVG_Type"].notna()].copy()

        result = result.reset_index()

        time_column = result.columns[0]

        result = result.rename(columns={time_column: "Datetime"})

        result["Datetime"] = result["Datetime"].astype(str)

        return jsonify({
            "FVG": result[
                [
                    "Datetime",
                    "FVG_Type",
                    "FVG_Lower",
                    "FVG_High",
                    "FVG_Midpoint"
                ]
            ].to_dict(orient="records")
        })

    except Exception as error:
        app.logger.exception("Failed to calculate EUR/USD FVG")
        return jsonify({
            "error": str(error),
            "type": type(error).__name__
        }), 500
    

if __name__ == "__main__":
    app.run(debug=True)