import 'package:belajar_flutter/data/notifiers.dart';
import 'package:belajar_flutter/views/pages/login_page.dart';
// import 'package:belajar_flutter/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Aplikasiku());
}

class Aplikasiku extends StatefulWidget {
  const Aplikasiku({super.key});

  @override
  State<Aplikasiku> createState() => _AplikasikuState();
}

class _AplikasikuState extends State<Aplikasiku> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return MaterialApp(
          title: "Belajar Notifier",
          debugShowCheckedModeBanner: false,
          theme:
              ThemeData(brightness: value ? Brightness.dark : Brightness.light),
          home: LoginPage(),
        );
      },
    );
  }
}
