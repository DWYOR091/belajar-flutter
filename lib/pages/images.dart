import 'package:flutter/material.dart';

class CobaImage extends StatelessWidget {
  const CobaImage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Belajar Membuat Image"),
              backgroundColor: Colors.amber[400],
            ),
            body: Image.asset("assets/images/lake.jpg",
                height: double.infinity, fit: BoxFit.fill)));
  }
}
