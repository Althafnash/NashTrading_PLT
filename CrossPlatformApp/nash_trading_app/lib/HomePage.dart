import 'dart:async';

import 'package:flutter/material.dart';

import '../models/market_data.dart';
import '../services/api_service.dart';
import './MarketCard.dart';
import './screens/eurusd_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiService apiService = ApiService();

  MarketData? eurUsdData;

  bool loading = true;
  String? error;

  Timer? timer;

  @override
  void initState() {
    super.initState();

    // Get EUR/USD data when the page opens
    fetchEURUSD();

    // Refresh the market data every minute
    timer = Timer.periodic(const Duration(minutes: 1), (_) {
      fetchEURUSD();
    });
  }

  Future<void> fetchEURUSD() async {
    try {
      final data = await apiService.getEURUSD();

      if (!mounted) return;

      setState(() {
        eurUsdData = data;
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
    // Stop the timer when leaving the page
    timer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 128, 255),

      // -----------------------------
      // TOP BAR
      // -----------------------------
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 122, 171, 219),
        elevation: 0,

        leading: const Icon(Icons.menu),

        title: const Text(
          'NashTrading APP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        actions: [
          IconButton(onPressed: fetchEURUSD, icon: const Icon(Icons.refresh)),
        ],
      ),

      // -----------------------------
      // MAIN BODY
      // -----------------------------
      body: Row(
        children: [
          // -----------------------------
          // SIDEBAR
          // -----------------------------
          Container(
            width: 250,
            color: Colors.black87,

            child: Column(
              children: [
                const SizedBox(height: 20),

                const Text(
                  'NASH TRADING',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 30),

                // Dashboard
                ListTile(
                  leading: const Icon(Icons.dashboard),
                  title: const Text('Dashboard'),
                  onTap: () {},
                ),

                // Markets
                ListTile(
                  leading: const Icon(Icons.show_chart),
                  title: const Text('Markets'),
                  onTap: () {},
                ),

                // Historical data
                ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text('Historical Data'),
                  onTap: () {},
                ),

                // Trading journal
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text('Trading Journal'),
                  onTap: () {},
                ),
              ],
            ),
          ),

          // -----------------------------
          // DASHBOARD CONTENT
          // -----------------------------
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // Page title
                  const Text(
                    'Market Overview',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 20),

                  // -----------------------------
                  // LOADING
                  // -----------------------------
                  if (loading)
                    const CircularProgressIndicator()
                  // -----------------------------
                  // ERROR
                  // -----------------------------
                  else if (error != null)
                    Text(error!, style: const TextStyle(color: Colors.red))
                  // -----------------------------
                  // MARKET DATA
                  // -----------------------------
                  else
                    Row(
                      children: [
                        MarketCard(
                          name: 'EUR/USD',

                          price: eurUsdData!.close,

                          changePercent: eurUsdData!.changePercent,

                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EurUsdScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
