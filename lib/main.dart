import 'package:belajar_flutter/data/notifiers.dart';
import 'package:belajar_flutter/views/pages/login_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (BuildContext context, dynamic value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Belajar Flutter",
          theme: ThemeData(
              // useMaterial3: true,
              brightness: isDarkModeNotifier.value
                  ? Brightness.dark
                  : Brightness.light),
          home: const LoginPage(),
        );
      },
    );
  }
}
