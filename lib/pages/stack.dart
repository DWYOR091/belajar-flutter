//TODO: Menggunakan sebuah stack widget

import 'package:flutter/material.dart';

class CobaStack extends StatelessWidget {
  const CobaStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Menggunakan Stack Widget"),
        ),
        body: Stack(
          children: [
            Image.asset(
              "assets/images/lake.jpg",
            ),
            const SizedBox(
              height: 380,
              child: Center(
                child: Text(
                  "Flutter Stack Widget",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
