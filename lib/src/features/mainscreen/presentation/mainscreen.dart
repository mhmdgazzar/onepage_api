import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String ip = 'Your IP Address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ip),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () async {
                final response = await get(
                    Uri.parse('https://ipinfo.io/161.185.160.93/geo'));

                Map<String, dynamic> m = jsonDecode(response.body);

                setState(() {
                  ip = m['ip'];
                });
              },
              child: const Text('Refresh API'),
            )
          ],
        ),
      ),
    );
  }
}
