async function UpdateMarketEURUSD() {
    console.log("[Market] UpdateMarketEURUSD started");
    try {
        console.log("[Market] Requesting EUR/USD data...");
        const response = await fetch("https://nashtrading-jz2un71om-nash-e9eb.vercel.app/api/eurusd");
        console.log("[Market] HTTP status:", response.status);

        if (!response.ok) {
            throw new Error("HTTP error: " + response.status);
        }

        const data = await response.json();
        console.log("[Market] Received data:", data);
        document.getElementById("Time").textContent = data.time ;
        document.getElementById("Open").textContent =
            Number(data.open).toFixed(10);
        document.getElementById("High").textContent =
            Number(data.High).toFixed(10);
        document.getElementById("Close").textContent =
            Number(data.Close).toFixed(10);
        console.log("[Market] UI updated successfully");
    } catch (error) {
        console.error("[Market] Update failed:", error);
    }
}

async function UpdateMarketGOLD() {
    console.log("[GOLDMARKET] UpdateGOLDMarketGOLD running");
    try {
        console.log("[GOLDMARKET] Requesting GOLD data ");
        const response = await fetch("https://nashtrading-jz2un71om-nash-e9eb.vercel.app/api/gold");
        console.log("[GOLDMARKET] got the gold data" + response.status);

        if (!response.ok) {
            throw new Error(" HTTP error" + response.status);
        }

        const data = await response.json();
        console.log("[GOLDMARKET] Received data", data);
        document.getElementById("GoldTime").textContent = data.time;
        document.getElementById("GoldOpen").textContent = 
            Number(data.open).toFixed(10)
        document.getElementById("GoldHigh").textContent = 
            Number(data.High).toFixed(10)
        document.getElementById("GoldClose").textContent = 
            Number(data.Close).toFixed(10)
        console.log("[GOLDMARKET] UI Updated");

    } catch (error) {
        console.error("[GOLDMarket] Update failed:", error);
    }
}

async function UpdateMarketBTC() {
    console.log("[BTCMarket] is running");
    try {
        console.log("[BTCMarket] requesting data");
        const response = await fetch("https://nashtrading-jz2un71om-nash-e9eb.vercel.app/api/btc");
        console.log("[BTCMarket] got data from BTC");

        if (!response.ok) {
            throw new Error("HTTP Error" + response.status);
        }

        const data = await response.json();
        console.log("[BTCMarket] data recevied",data);
        document.getElementById("BTCTime").textContent = data.time;
        document.getElementById("BTCOpen").textContent =
            Number(data.open).toFixed(10);
        document.getElementById("BTCClose").textContent = 
            Number(data.Close).toFixed(10);
        document.getElementById("BTCHigh").textContent =
            Number(data.Close).toFixed(10);
    } catch (error) {
        console.error("[BTCMarket] Update failed:", error);
    }
}

async function UpdateEURUSD_FVG() {
    console.log("[EURUSD FVG DATA]");
    try {
        console.log("[EUUSD] GETTING data");
        const response = await fetch("https://nashtrading-jz2un71om-nash-e9eb.vercel.app/api/Eurusd_FVG")
        console.log("[EURUSD] got the data" + response.status);

        if (!response.ok) {
            throw new Error("[EURUSD] error" + response.status);
        }

        const data = response.json();
        
        
    } catch (error) {
        console.error("[BTCMarket] Update failed:", error);
    }
}
const FVGButton = document.getElementById("FVGButton");
FVGButton.addEventListener("click", () => {
    UpdateEURUSD_FVG();
})

UpdateMarketEURUSD();
UpdateMarketGOLD();
UpdateMarketBTC();

setInterval(UpdateMarketEURUSD, 10000);
setInterval(UpdateMarketGOLD, 10000);
setInterval(UpdateMarketBTC, 10000);
