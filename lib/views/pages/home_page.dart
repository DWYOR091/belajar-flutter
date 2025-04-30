import 'package:belajar_flutter/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              HeroWidget(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                child: Card(
                  shadowColor: Colors.red,
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Judul"),
                          Text("deksripsi"),
                        ]),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(Icons.album, size: 50),
                  title: Text('Judul Card'),
                  subtitle: Text('Subtitle atau deskripsi singkat'),
                  trailing: Icon(Icons.more_vert),
                  onTap: () {
                    print('Card ditekan');
                  },
                ),
              ),
              SizedBox(
                height: 100.0,
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  children: [
                    for (int i = 1; i <= 5; i++)
                      Card(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: ListTile(
                          title: Text('Item $i'),
                          subtitle: Text('Deskripsi untuk item $i'),
                          onTap: () {
                            print('Item $i ditekan');
                          },
                        ),
                      ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
