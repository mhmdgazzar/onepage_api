import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('data'),
            const SizedBox(height: 16),
            OutlinedButton(onPressed: () {}, child: const Text('Refresh API'))
          ],
        ),
      ),
    );
  }
}
