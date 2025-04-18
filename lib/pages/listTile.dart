import 'package:flutter/material.dart';

class CobaListTile extends StatelessWidget {
  const CobaListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Membuat ListTile"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            ListTile(
              title: Text("ListTile"),
              tileColor: Colors.amber[100],
              subtitle: Text("Ini Subtitle"),
              trailing: Text("ini trailing"),
              textColor: Colors.red,
              leading: Icon(
                Icons.alarm,
                color: Colors.tealAccent,
              ),
              onTap: () {
                print("Ditap");
              },
            ),
            const Wrap(
              //fuugsi wrap agar tidak terlalu panjang jadi akan ke bawah seperti flex wrap
              spacing: 30.0, //jarak antar item
              runSpacing: 5.0, //jarak antar baris
              children: [
                Text("lasdakwokaokdwoakdoawkdoawk"),
                Text("Kocakadadawdawdadawdadaawadawwda"),
                Text("Kocak"),
                Text("Kocak"),
                Chip(
                  label: Text("Kocak"),
                  labelPadding: EdgeInsets.all(10.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
