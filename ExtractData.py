import yfinance as yf
import pandas as pd

# Define the ticker symbol for Bitcoin (BTC to USD)
ticker_symbol = "BTC-USD"

# Fetch all available historical data
btc_data = yf.download(ticker_symbol, period="max")

# Display the first few rows of the data
print(btc_data.head())

# (Optional) Export the complete dataset to a CSV file
btc_data.to_csv("BTC_historical_data.csv")
print("\nData successfully downloaded and saved to 'BTC_historical_data.csv'")
