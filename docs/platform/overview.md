# The Platfrom

This platform is an Analysis platform for trading and investment.

The platform contains many features including live price of candles using. It uses yahoo finance API to get teh data from there it then creates and Endpoint which post the data into.

Then the front end can get the information and display it.

The wwb Platform has the following features which are :

* The Open, Close, High of the current candle  from the market for the 1 minute timeframe
* This also contain historical data of 500 companies for a 10 year time period (2015 - 2025)

## Technical Documentation

```bash
load_dotenv()

app = Flask(__name__)

DATABASE_URL = os.environ.get("DATABASE_URL")
```

This loads in the Database url need for the Database in Neon. then it will easy for the routes to get data and write data to teh database in Neon. This also initializes the flask app

<u>def FVG(df)</u>

This function takes in a data frames from yahoo finance which has been polished for processing

The process starts by making a  copy of the dataframe. Next we get the candle 1 high and low and candle 3 high and low. To get the high and low of the candle 3 we shift the row three down form top down that is.

Next we initialize the needed data such as FVG TYPE, FVG_High, FVG_Low and FVG_Midpoint

```bash
bullish = candle1_high < candle3_low
bearish = candle1_high > candle3_low
```

If the high of the candle on is is lesser than the low of the candle 3 then the fair value gap is a Bullish fair value gap. If the high of  candle 1 is higher then the low of teh candle 3 then teh fair value gap is a bearish fair value gap

```bash
    df.loc[bullish, "FVG_Type"] = "Bullish"
    df.loc[bullish, "FVG_Lower"] = candle1_high[bullish]
    df.loc[bullish, "FVG_High"] = candle1_low[bullish]

    df.loc[bearish, "FVG_Type"] = "Bearish"
    df.loc[bearish, "FVG_Lower"] = candle1_high[bearish]
    df.loc[bearish, "FVG_High"] = candle1_low[bearish]

    df["FVG_Midpoint"] = (
        df["FVG_Lower"] + df["FVG_High"] 
    ) / 2
```

Now we need to get teh data and update teh dataframe. First we locate the column FVG_type with the bullish row and update it to be bullish. Next we update the column FVG_High with the bullish row to the low of candle 1. Next we take the column FVG_Low of the row bullish and update it to the low of candle 1.

Next we we locate the column FVG_type with the bearish row and update it to be bearish. Next we update the column FVG_High with the bearish row to the low of candle 1. Next we take the column FVG_Low of the row bearish and update it to the low of candle 1.

Finally we find the midpoint by taking the FVG_Low and subtracting it from FVG_high and dividing it by 2

Finally we return the dataframe

<u>def get_db_connection():</u>

This function have only one rule it use psycopg and connect to the neon database if it could not it will raise a run time error 

<u>@app.route("/")</u>

This is the app homepage and this route render the

<u>@app.route("/api/health")</u>

This is a route which is used to check if the Neon database is up or not. This uses a try and catch then it use the ef **get_db_connection():** connects to teh database and runs a SELECT 1 query to see if the Neon database response if it doesnot it return a json error code

```bash
return jsonify({
    "status": "error",
    "message": "Database connection failed"
}), 500
```

# Next

[MARKETS](./markets.md)
[HISTORICAL_DATA](./historical-data.md)