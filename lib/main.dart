import 'package:flutter/material.dart';
import 'package:medicen_app/Outboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Outboarding()
      ),
    );
  }
}
