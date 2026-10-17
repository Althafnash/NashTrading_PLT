class MarketData {
  final double close;
  final double high;
  final double open;
  final String time;

  const MarketData({
    required this.close,
    required this.open,
    required this.high,
    required this.time,
  });

  factory MarketData.fromJson(Map<String, dynamic> json) {
    return MarketData(
      close: (json['Close'] as num).toDouble(),
      high: (json['High'] as num).toDouble(),
      open: (json['Open'] as num).toDouble(),
      time: json['time'].toString(),
    );
  }

  double get change {
    return close - open;
  }

  double get changePercent {
    if (open == 0) return 0;
    return ((close - open) / open) * 100;
  }
}
