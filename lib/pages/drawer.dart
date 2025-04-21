import 'package:flutter/material.dart';

class CobaDrawer extends StatelessWidget {
  const CobaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "coba drawer",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Coba Drawer"),
        ),
        drawer: SafeArea(
          //fungsi safe area agar tidak melebihi layar
          child: Drawer(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                  child: DrawerHeader(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: MediaQuery.of(context).size.width * 0.3),
                    // padding: EdgeInsets.all(double.infinity),
                    // margin: EdgeInsets.all(0),
                    child: Row(
                      children: [
                        Text(
                          "Ini isi drawer!",
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.accessible),
                  title: Text("Item 1"),
                  hoverColor: Colors.red,
                  tileColor: Colors.blue[100],
                  dense: true, //tampil jadi ramping padding kecil
                  onTap: () {
                    print("Lets go");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Item 2"),
                  tileColor: Colors.red[100],
                  subtitle: Text("Tes subtitle"),
                  textColor: Colors.white,
                  trailing: Icon(Icons.rice_bowl),
                  selectedTileColor: Colors.purpleAccent,
                  dense: true,
                  enabled:
                      false, //jika false maka tidak bisa di tap atau apapun interaksi user
                  onTap: () {
                    print("yuhuu!");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
