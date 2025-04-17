import 'package:flutter/material.dart';

class RowKu extends StatelessWidget {
  const RowKu({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Membuat Row"),
          backgroundColor: Colors.amber[400],
        ),
        body: Container(
          height: double.infinity,
          color: Colors.brown,
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.pink[300],
                margin: EdgeInsets.only(right: 10.0),
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
  }
}
