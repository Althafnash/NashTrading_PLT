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

async function UpdateMarketGOLD() {
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

async function UpdateEURUSD_FVG() {
    console.log("[EURUSD FVG DATA]");

    try {
        console.log("[EURUSD] Getting data");

        const response = await fetch("/api/eurusd/FVG");

        console.log("[EURUSD] Response status:", response.status);

        if (!response.ok) {
            throw new Error("EURUSD FVG request failed: " + response.status);
        }

        const data = await response.json();

        console.log("[EURUSD FVG] Received data:", data);

        if (!data.FVG || data.FVG.length === 0) {
            document.getElementById("EURUSDFVG-Time").textContent =
                "No FVG found";
            return;
        }

        const latestFVG = data.FVG[data.FVG.length - 1];

        document.getElementById("EURUSDFVG-Time").textContent =
            latestFVG.Datetime;
        document.getElementById("EURUSDFVG-High").textContent =
            latestFVG.FVG_High;
        document.getElementById("EURUSDFVG-Close").textContent =
            latestFVG.FVG_High;
        document.getElementById("EURUSDFVG-Open").textContent =
            latestFVG.FVG_Midpoint;
        document.getElementById("type").textContent =
            latestFVG.FVG_Type;

    } catch (error) {
        console.error("[EURUSD FVG] Update failed:", error);
    }
    }

const FVGButton = document.getElementById("FVGButton");
FVGButton?.addEventListener("click", () => {
    UpdateEURUSD_FVG();
})

const MSIDownload = document.getElementById("MSIDownload");
MSIDownload?.addEventListener("click", () => {
    const link = document.createElement("a");
    link.href = "./static/NashTradingPLT.msix";
    link.download = "NashTradingPLT.msix";

    document.body.appendChild(link);
    link.click();
    document.body.remove(link);
});

const APKDownload = document.getElementById("APKDownload");
APKDownload?.addEventListener("click", () => {
    const link = document.createElement("a");
    link.href = "./static/NashTradingPLT.apk";
    link.download = "NashTradingPLT.apk";

    document.body.appendChild(link);
    link.click();
    document.body.remove(link);
});

UpdateMarketEURUSD();
UpdateMarketGOLD();
UpdateMarketBTC();

setInterval(UpdateMarketEURUSD, 10000);
setInterval(UpdateMarketGOLD, 10000);
setInterval(UpdateMarketBTC, 10000);
