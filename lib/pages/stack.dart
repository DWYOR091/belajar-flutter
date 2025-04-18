//TODO: Menggunakan sebuah stack widget

import 'package:flutter/material.dart';

class CobaStack extends StatelessWidget {
  const CobaStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Menggunakan Stack Widget"),
          backgroundColor: Colors.indigo[100],
          leading: const Icon(
            Icons.notification_add,
            color: Colors.white,
            shadows: [BoxShadow(blurRadius: 10)],
            textDirection: TextDirection.rtl,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Image.asset(
                "assets/images/lake.jpg",
              ),
              const SizedBox(
                //sizebox agar bisa nambah heigh dan width
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
      ),
    );
  }
}
