// lib/main.dart
import 'package:flutter/material.dart';
import 'package:uptick_newsapp_task/screen/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
