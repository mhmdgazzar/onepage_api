import 'package:flutter/material.dart';
import 'package:onepage_api/src/features/mainscreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Mainscreen(),
    );
  }
}
