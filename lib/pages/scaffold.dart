//widget scaffold adalah kerangka

import 'package:flutter/material.dart';

class CobaScaffold extends StatelessWidget {
  const CobaScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "nama aplikasinya",
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.red, brightness: Brightness.dark)),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue[400],
            title: const Text("Belajar Scaffold Widget"),
            leading: const Icon(Icons.login),
            actions: [Text("asdawdawkaw")],
          ),
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: "home"),
              NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            ],
            onDestinationSelected: (int value) {
              print(value);
            },
            selectedIndex: 1,
          ),
          body: Container(),
        ));
  }
}
