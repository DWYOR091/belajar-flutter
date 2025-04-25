import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController textController1 = TextEditingController();
  bool? isChecked = false;
  bool isswitch = false;
  //banyak checkbox
  List<bool> isCheckedList = [false, false, false];
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
          ),
          Checkbox(
            tristate: true, //artinya bisa 3 null,false,true
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          CheckboxListTile(
            tristate: true,
            value: isChecked,
            title: Text("ini checkboxlisttile"),
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  value: isCheckedList[index],
                  title: Text("date $index"),
                  onChanged: (value) {
                    setState(() {
                      isCheckedList[index] = value!;
                    });
                  },
                );
              },
            ),
          ),
          Switch.adaptive(
            value: isswitch,
            onChanged: (value) {
              setState(() {
                isswitch = value;
              });
            },
          ),
          SwitchListTile.adaptive(
            title: Text("ini switch"),
            value: isswitch,
            onChanged: (value) {
              setState(() {
                isswitch = value;
              });
            },
          ) //fungsi .adaptive akan menyesuaikan tampilan android dan ios
        ],
      ),
    );
  }
}
