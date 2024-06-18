import 'package:flutter/material.dart';
import 'package:onepage_api/src/features/mainscreen/presentation/mainscreen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Mainscreen(),
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
    );
  }
}
