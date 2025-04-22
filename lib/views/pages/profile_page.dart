import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController textController1 = TextEditingController();
  @override
  void initState() {
    textController1.addListener(
      () {
        print("Changed: ${textController1.text}");
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: textController1,
            decoration: InputDecoration(
                label: Text("Label"),
                hintText: "Masukan text!",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
            onEditingComplete: () {
              setState(() {});
            },
          ),
          Center(
            child: Text(textController1.text),
          )
        ],
      ),
    );
  }
}
