import psycopg
from psycopg import sql
import subprocess as sub
import pandas as pd
import os
from dotenv import load_dotenv
import json
import yfinance as yf
import pandas as pd
from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

con_params = {
    "dbname": "API_Database",
    "user":"postgres",
    "password":"8837",
    "host":"127.0.0.1",
    "port":"5432"
}

@app.route("/")
def dashboard():
    return render_template("dashboard.html")

load_dotenv()

DATABASE_URL = os.environ.get("DATABASE_URL")

def get_db_connection():
    if not DATABASE_URL:
        raise RuntimeError("DATABASE_URL is not configured")

    return psycopg.connect(DATABASE_URL)

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
            return jsonify({"error": "No market data available"}),503

        latest = df.iloc[-1]

        return jsonify({
            "time": df.index[-1].isoformat(),
            "open": float(latest["Open"]),
            "High": float(latest["High"]),
            "High": float(latest["High"]),
            "Close": float(latest["Close"]),
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
            "GOLD",
            period="1d",
            interval="1m",
            progress=False,
            auto_adjust=False,
            multi_level_index=False
        )

        if df.empty:
            return jsonify({"error": "No market data available"}),503

        latest = df.iloc[-1]

        return jsonify({
            "time": df.index[-1].isoformat(),
            "open": float(latest["Open"]),
            "High": float(latest["High"]),
            "High": float(latest["High"]),
            "Close": float(latest["Close"]),
        })
    
    except Exception as error:
        app.logger.exception("Failed to retrieve EUR/USD data")
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
            return jsonify({"error": "No market data available"}),503

        latest = df.iloc[-1]

        return jsonify({
            "time": df.index[-1].isoformat(),
            "open": float(latest["Open"]),
            "High": float(latest["High"]),
            "High": float(latest["High"]),
            "Close": float(latest["Close"]),
        })
    
    except Exception as error:
        app.logger.exception("Failed to retrieve EUR/USD data")
        return jsonify({
            "msg": "Unable to retrieve market data",
            "error": str(error),
            "type": type(error).__name__
        }), 502

@app.route("/Historical")
def Historical():
    with psycopg.connect(**con_params) as conn:
        with conn.cursor() as cur:
            print(f"connected to database: {con_params['dbname']} \n")
            # sub.run("cls", shell=True)

            cur.execute("SELECT schema_name FROM information_schema.schemata")
            schemas = cur.fetchall()
                
            cur.execute(f"SELECT table_name FROM information_schema.tables WHERE table_schema = 'HistoricalStockData';")
            Tables = cur.fetchall()

    return render_template("Historical.html",Tables=Tables,schemas=schemas)

@app.route("/select-stock", methods=["POST"])
def select_table():
    table = request.form["stock"]
    with psycopg.connect(**con_params) as conn:
            with conn.cursor() as cur:
                print(f"connected to database: {con_params['dbname']} \n")
                cur.execute(f"""SELECT * FROM "HistoricalStockData"."{table}";""")
                schemas = cur.fetchall()
                columns = [desc.name for desc in cur.description]
    return  render_template(
                "table.html",
                columns=columns,
                rows=schemas
            )

if __name__ == "__main__":
    app.run(debug=True)

    