import 'package:flutter/material.dart';



import '../widgets/app_bar.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Center(
        child: const Text(
          " ",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
