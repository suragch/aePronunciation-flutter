import 'package:aepronunciation/pages/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AePronunciationApp());
}

class AePronunciationApp extends StatelessWidget {
  const AePronunciationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ae Pronunciation',
      home: MainScreen(),
    );
  }
}
