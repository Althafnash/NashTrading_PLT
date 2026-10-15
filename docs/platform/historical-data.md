# Historical Data

The platform also provides historical data from the 500 companies form the S&P 500 of 10 years from 2015 to 2025

You can search for the data in the historical data tab and name of the all the companies which are searchable will be included there

## Technical documentation

```js
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
```

First this take the name of the table from the form from the frontend and then connects with the Neon database and run the query.

```sql
'SELECT * FROM {}.{}'
```

it then fetches all teh table rows and ten it add the header columns to the dataframe and send it to a separate HTML file named the table.html