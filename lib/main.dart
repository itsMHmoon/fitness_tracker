import 'package:flutter/material.dart';
import 'package:fitness_tracker/screens/home_page.dart';
import 'package:fitness_tracker/screens/statistics_page.dart';
import 'package:fitness_tracker/screens/connection_page.dart';
import 'package:fitness_tracker/screens/shop_page.dart';
import 'package:fitness_tracker/screens/test.dart';

void main() {
  runApp(const FitnessTrackingApp());
}

class FitnessTrackingApp extends StatelessWidget {
  const FitnessTrackingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness Tracking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/connection': (context) => const ConnectionPage(),
        '/statistics': (context) => const StatisticsPage(),
        '/shop': (context) => const ShopPage(),
        '/test': (context) => TestPage(title: '',),
        
      },
    );
  }
}
