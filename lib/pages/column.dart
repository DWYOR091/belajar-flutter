import 'package:flutter/material.dart';

class CobaColumn extends StatelessWidget {
  const CobaColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "Belajar Membuat Column",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text("Belajar Membuat Column"),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20.0),
          color: Colors.amber[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                width: 100.0,
                height: 100.0,
                color: Colors.pink[300],
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.purple[300],
              )
            ],
          ),
        ),
      ),
    );
    // TODO: implement build
    // throw UnimplementedError();
  }
}
