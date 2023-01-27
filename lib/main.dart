import 'package:advance_booking_app/Screen/Tabs/serveTabs.dart';
import 'package:advance_booking_app/Screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen()
    );
  }
}