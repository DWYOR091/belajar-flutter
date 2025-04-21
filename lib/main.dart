// import 'package:belajar_flutter/pages/column.dart';
// import 'package:belajar_flutter/pages/images.dart';
// import 'package:belajar_flutter/pages/row.dart';
// import 'package:belajar_flutter/pages/stack.dart';
// import 'package:belajar_flutter/pages/listTile.dart';
// import 'package:belajar_flutter/pages/scaffold.dart';
// import 'package:belajar_flutter/pages/drawer.dart';
import 'package:belajar_flutter/pages/statefull.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(const MyApp());
  // runApp(const CobaColumn());
  // runApp(const RowKu());
  // runApp(const CobaImage());
  // runApp(const CobaStack());
  // runApp(const CobaListTile());
  // runApp(const CobaScaffold());
  // runApp(const CobaDrawer());
  runApp(const CobaStateFull());
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
      debugShowCheckedModeBanner: false, //menghilangkan label debug
      title: 'Belajar Flutter',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 76, 207, 80),
              brightness: Brightness.dark),
          useMaterial3: true),
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
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.all(10.0),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(25.0)),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.amber[200]),
            child: Text(
              "Hello bro!",
              style: TextStyle(color: Colors.red[400]),
            ),
          ),
        ),
      ),
    );
  }
}
