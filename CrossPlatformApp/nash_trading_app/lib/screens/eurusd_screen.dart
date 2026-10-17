import 'dart:async';

import 'package:flutter/material.dart';

import '../models/market_data.dart';
import '../services/api_service.dart';

class EurUsdScreen extends StatefulWidget {
  const EurUsdScreen({super.key});

  @override
  State<EurUsdScreen> createState() => _EurUsdScreenState();
}

class _EurUsdScreenState extends State<EurUsdScreen> {
  final ApiService apiService = ApiService();

  MarketData? marketData;

  bool loading = true;
  String? error;

  Timer? timer;

  @override
  void initState() {
    super.initState();

    fetchData();

    timer = Timer.periodic(const Duration(minutes: 1), (_) {
      fetchData();
    });
  }

  Future<void> fetchData() async {
    try {
      final data = await apiService.getEURUSD();

      if (!mounted) return;

      setState(() {
        marketData = data;
        loading = false;
        error = null;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        loading = false;
        error = e.toString();
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (error != null) {
      return Scaffold(
        appBar: AppBar(title: const Text('EUR/USD')),
        body: Center(
          child: Text(error!, style: const TextStyle(color: Colors.red)),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('EUR/USD')),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'EUR/USD',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            Text(
              marketData!.close.toStringAsFixed(3),
              style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Text('Open: ${marketData!.open.toStringAsFixed(3)}'),

            Text('High: ${marketData!.high.toStringAsFixed(3)}'),

            Text('Change: ${marketData!.change.toStringAsFixed(3)}'),

            const SizedBox(height: 20),

            Text('Updated: ${marketData!.time}'),

            const SizedBox(height: 30),

            ElevatedButton(onPressed: fetchData, child: const Text('Refresh')),
          ],
        ),
      ),
    );
  }
}
