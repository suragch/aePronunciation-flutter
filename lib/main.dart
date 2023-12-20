import 'package:flutter/material.dart';

void main() {
  runApp(const AePronunciationApp());
}

class AePronunciationApp extends StatelessWidget {
  const AePronunciationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ae Pronunciation',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
