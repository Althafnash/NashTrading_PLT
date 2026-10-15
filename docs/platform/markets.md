# Market

The market uses routes to get the data. The routes are explained in here [API](../api/overview.md).

Here I will explain teh front end and how the app display's the data

```js
async function UpdateMarketEURUSD() {
    console.log("[Market] UpdateMarketEURUSD started");
    try {
        console.log("[Market] Requesting EUR/USD data...");
        const response = await fetch("/api/eurusd");
        console.log("[Market] HTTP status:", response.status);

        if (!response.ok) {
            throw new Error("HTTP error: " + response.status);
        }

        const data = await response.json();
        console.log("[Market] Received data:", data);
        document.getElementById("Time").textContent = data.time ;
        document.getElementById("Open").textContent =
            Number(data.Open).toFixed(10);
        document.getElementById("High").textContent =
            Number(data.High).toFixed(10);
        document.getElementById("Close").textContent =
            Number(data.Close).toFixed(10);
        console.log("[Market] UI updated successfully");
    } catch (error) {
        console.error("[Market] Update failed:", error);
    }
}
```

For example lets take how the front end fetches the data from teh API and then display's it in the. First we use a try catch first we fetch the response  from the api route and then we check if it is not a then we get an error in the console. if we got the response we then take teh appropriate DOM element and then we replace teh text

The same is done for the BTC, EURUSD and GOLD market

```js 
sync function UpdateMarketGOLD() {
    console.log("[GOLDMARKET] UpdateGOLDMarketGOLD running");
    try {
        console.log("[GOLDMARKET] Requesting GOLD data ");
        const response = await fetch("/api/gold");
        console.log("[GOLDMARKET] got the gold data" + response.status);

        if (!response.ok) {
            throw new Error(" HTTP error" + response.status);
        }

        const data = await response.json();
        console.log("[GOLDMARKET] Received data", data);
        document.getElementById("GoldTime").textContent = data.time;
        document.getElementById("GoldOpen").textContent = 
            Number(data.Open).toFixed(10)
        document.getElementById("GoldHigh").textContent = 
            Number(data.High).toFixed(10)
        document.getElementById("GoldClose").textContent = 
            Number(data.Close).toFixed(10)
        console.log("[GOLDMARKET] UI Updated");

    } catch (error) {
        console.error("[GOLDMarket] Update failed:", error);
    }
}
```

```js
async function UpdateMarketBTC() {
    console.log("[BTCMarket] is running");
    try {
        console.log("[BTCMarket] requesting data");
        const response = await fetch("/api/btc");
        console.log("[BTCMarket] got data from BTC");

        if (!response.ok) {
            throw new Error("HTTP Error" + response.status);
        }

        const data = await response.json();
        console.log("[BTCMarket] data recevied",data);
        document.getElementById("BTCTime").textContent = data.time;
        document.getElementById("BTCOpen").textContent =
            Number(data.Open).toFixed(10);
        document.getElementById("BTCClose").textContent = 
            Number(data.Close).toFixed(10);
        document.getElementById("BTCHigh").textContent =
            Number(data.Close).toFixed(10);
    } catch (error) {
        console.error("[BTCMarket] Update failed:", error);
    }
}
```