import 'package:flutter/material.dart';


import '../widgets/app_bar.dart';

class ConnectionPage extends StatelessWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 218, 218),
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
