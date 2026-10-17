import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/market_data.dart';

class ApiService {
  static const String baseURL = 'https://nashtrading-two.vercel.app';

  Future<MarketData> getEURUSD() async {
    final response = await http.get(Uri.parse("$baseURL/api/eurusd"));
    if (response.statusCode != 200) {
      throw Exception('API error: ${response.statusCode}');
    }

    final data = jsonDecode(response.body);

    return MarketData.fromJson(data);
  }
}
