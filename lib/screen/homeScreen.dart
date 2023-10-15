// lib/screens/home_screen.dart
import 'package:flutter/material.dart';

import '../utils/card_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aproko News App'),
      ),
      body: NewsCardList(),
    );
  }
}
