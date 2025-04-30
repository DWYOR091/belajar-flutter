import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final TextEditingController textController1 = TextEditingController();
  bool? isChecked = false;
  bool isswitch = false;
  double sliderValue = 0.0;
  //banyak checkbox
  List<bool> isCheckedList = [false, false, false];
  List<bool> isToogleList = [true, false, false];
  String? menuItem;

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black26,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context); //untuk kembali
          },
        ),
        automaticallyImplyLeading:
            false, //untuk menghilangkan back otomatis dari navigator
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
                child: ListView(
                  children: [
                    ListTile(title: Text('Bagian 1')),
                    Divider(),
                    ListTile(title: Text('Bagian 2')),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Snackbar!"),
                      duration: Duration(seconds: 1),
                      elevation: 1.0,
                    ));
                  },
                  child: Text("Open Snackbar")),
              Divider(
                thickness: 50.0, //ketebalan
                color: Colors.pink,
                height: 20.0,
                // endIndent: 10.0, //batas akhir
              ),
              Container(
                height: 30.0,
                child: VerticalDivider(
                  thickness: 10.0,
                ),
              ),
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
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                //inkwell ada splashColor sedangkan  GestureDetector tidak ada!
                splashColor: Colors.teal,
                onTap: () {
                  print("di tap!");
                },
                child: Container(
                  color: Colors.black12,
                  height: 180,
                  width: double.infinity,
                  child: Center(
                    child: Text("ini inkwell"),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
                child: Text(
                  "Buttons",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              ToggleButtons(
                isSelected: isToogleList,
                children: [
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: (int index) {
                  setState(() {
                    // isToogleList[index] = !isToogleList[index];
                    // if (index == 0) {
                    //   isToogleList = [true, false, false];
                    // } else if (index == 1) {
                    //   isToogleList = [false, true, false];
                    // } else {
                    //   isToogleList = [false, false, true];
                    // }
                    switch (index) {
                      case 0:
                        isToogleList = [true, false, false];
                      case 1:
                        isToogleList = [false, true, false];
                      case 2:
                        isToogleList = [false, false, true];
                        break;
                      default:
                        print("Tidak ada!");
                    }
                  });
                },
              ),
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  child: const Text("Elevanted Button")), //adashadownya
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue)),
                  child: const Text(
                      "Text Button")), //seperti a href untuk hyperlink
              IconButton(
                icon: Icon(Icons.icecream_rounded),
                onPressed: () {
                  print("icon btn.");
                },
              ),
              PopupMenuButton<String>(
                itemBuilder: (context) => [
                  PopupMenuItem(value: "edit", child: Text("Edit")),
                  PopupMenuItem(value: "delete", child: Text("Delete")),
                ],
              ),
              DropdownButton<String?>(
                value: menuItem,
                // items: [
                //   DropdownMenuItem(child: Text("One"), value: "one"),
                //   DropdownMenuItem(child: Text("Two"), value: "two"),
                // ], //cara 1
                // items: [null, "one", "two"].map((value) {
                //   return DropdownMenuItem(
                //     child: Text(value ?? "pilih satu!"),
                //     value: value,
                //   );
                // }).toList(), //cara2
                //cara 3 agar value dan textnya beda
                hint: Text("pilih salah satu!"),
                items: [
                  DropdownMenuItem<String?>(
                    value: null,
                    child: Text("Tidak dipilih"),
                  ),
                  ...[
                    {"label": "One", "value": "one"},
                    {"label": "Two", "value": "two"},
                  ].map((e) {
                    return DropdownMenuItem<String?>(
                      value: e["value"],
                      child: Text(e["label"]!),
                    );
                  }).toList(),
                ],
                onChanged: (value) {
                  setState(() {
                    menuItem = value;
                    print(value);
                  });
                },
              ),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Outline btn"),
              ),
              //custom button
              GestureDetector(
                onTap: () {
                  print("btn di tap!");
                },
                child: Container(
                  height: 40.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            blurRadius: 6,
                            offset: Offset(2, 2))
                      ]),
                  child: Center(
                    child: Text(
                      "custom Button",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
