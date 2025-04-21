//! import
import 'package:flutter/material.dart';

//! main
void main(List<String> args) {
  runApp(const HomePage());
}

//! widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Ads"),
        backgroundColor: Colors.black26,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: Text("Hello Google"),
      ),
    );
  }
}
