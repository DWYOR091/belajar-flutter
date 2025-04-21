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
                seedColor: Colors.red.shade400, brightness: Brightness.light)),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue[400],
            title: const Text("Belajar Scaffold Widget"),
            leading: const Icon(Icons.login),
            actions: [Text("asdawdawkaw")],
          ),
          floatingActionButton: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize:
                MainAxisSize.min, //mengambil ruang yg hanya dibutuhkan pake min
            children: [
              FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    print("tes floating btn!");
                  }),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                  child: const Icon(Icons.access_alarm_rounded),
                  onPressed: () {
                    print("tes floating btn 2!");
                  }),
            ],
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
