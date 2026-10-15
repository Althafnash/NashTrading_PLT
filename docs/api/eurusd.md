# The EURUSD market data

Using the yahoo finance API i can get the data and then clean it with pandas  and then send it as JSON data to the mobile app and the frontend

```python

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
```

This route is used to send data from teh yahoo finance to teh frontend. This route first takes the dataframe produced by the yahoo finance API which takes in teh attributes of the Market, teh time period od the data to be retrieved, the timeframe of teh data, if it wants the progressive data, if want it to be auto adjusted and if it wanted it to be multilevel index

if the dataframe is empty then it sends a JSON msg with the error and the response status code.

then it takes the latest row right below the header columns and then it organize it into a JSON obj with teh following properties as time which is the index -1 in the dataframe which is converted to iso format and then the high, low and close of the candle and send them as an export