import 'package:flutter/material.dart';

class CobaStateFull extends StatefulWidget {
  const CobaStateFull({super.key});

  @override
  State<CobaStateFull> createState() => _CobaStateFullState();
}

class _CobaStateFullState extends State<CobaStateFull> {
  int currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Belajar Statefull Widget"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: currentValue == 0 ? Text("Home") : Text("Phone"),
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "home"),
              NavigationDestination(icon: Icon(Icons.phone), label: "phone"),
            ],
            onDestinationSelected: (value) {
              setState(() {
                currentValue = value;
              });
            },
            selectedIndex: currentValue,
          )),
    );
  }
}
