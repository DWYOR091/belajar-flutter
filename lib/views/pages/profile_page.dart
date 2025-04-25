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
  double sliderValue = 0.0;
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: textController1,
              decoration: InputDecoration(
                  label: const Text("Label"),
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
              title: const Text("ini checkboxlisttile"),
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SizedBox(
              //jika listview ingin scroll sendiri pake expanded atau flexible karena jika dibungkus paka SingleeChildScrollview akan jadi bunging kasih ukuran untuk childnya ;v
              height: 180,
              child: ListView.builder(
                // shrinkWrap:
                //     true, //jika sudah dibungkan pake ini atau pakai sizebox agar ukurannya ttp
                // physics:
                //     NeverScrollableScrollPhysics(), //jika sudah dibungkan pake ini
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
              title: const Text("ini switch"),
              value: isswitch,
              onChanged: (value) {
                setState(() {
                  isswitch = value;
                });
              },
            ), //fungsi .adaptive akan menyesuaikan tampilan android dan ios
            Slider.adaptive(
                max: 5.0,
                divisions: 5,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                    print(value);
                  });
                }),
            GestureDetector(
              //fungsi gestureDetection memberikan agar gambar bisa di tap atau apapun
              child: Image.asset("assets/images/lake.jpg"),
              onTap: () {
                print("gambar di tap");
              },
            ),
          ],
        ),
      ),
    );
  }
}
