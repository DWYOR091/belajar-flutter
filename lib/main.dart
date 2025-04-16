import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

//types
String name = "Muhamad Rifqi";
int number = 1;
double dNumber = 2.1;
List myList = ["Tes1", "Tes2", 1];
Map<String, dynamic> myMap = {
  "name": "kocak",
  "address": "hahaha",
  "number": 1
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(),
      home: const TestPage(title: "Halaman Pertama!"),
    );
    // throw UnimplementedError();
  }
}

class TestPage extends StatelessWidget {
  final String title;
  const TestPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text("Belajar Flutter"),
      ),
    );
  }
}
