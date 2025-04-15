import 'package:flutter/material.dart';

//new
//jalankan
main() => runApp(const AplikasiSaya());

class AplikasiSaya extends StatelessWidget {
  const AplikasiSaya({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            //scaffold itu kerangka widget
            appBar: AppBar(
              title: const Text("Selamat Datang!"),
              backgroundColor: Colors.blue[100],
            ),
            body: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: "Username",
                          hintText: "Masukan username Anda!"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40.0),
                    //input text biasa
                    // child: TextField(
                    //   decoration: InputDecoration(
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(25)),
                    //       labelText: "Password",
                    //       hintText: "Masukan password Anda!"),
                    //   obscureText: true, //jadi ****** seperti password
                    // ),
                    // input text buat form
                    child: TextFormField(
                      initialValue: "ini nilai awalnya",
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          labelText: "Password",
                          hintText: "Masukan password anda!"),
                      obscuringCharacter: "#",
                      obscureText: true,
                    ),
                  ),
                  // TextButton(
                  //   style: const ButtonStyle(),
                  //   onPressed: () {},
                  //   child: const Text("Login"),
                  // ),
                  // ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //         minimumSize: const Size(150, 30),
                  //         backgroundColor:
                  //             WidgetStateProperty.resolveWith((states) {
                  //           if (states.contains(WidgetState.hovered)) {
                  //             return Colors.blueAccent;
                  //           }
                  //           return Colors.blue;
                  //         }),
                  //         padding: const EdgeInsets.all(15.0),
                  //         textStyle: const TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.bold)),
                  //     child: const Text("Login")),
                  Builder(
                    builder: (context) => TextButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(150, 50)),
                        backgroundColor:
                            WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.pressed)) {
                              return Colors.orange; // Saat ditekan
                            }
                            if (states.contains(WidgetState.hovered)) {
                              return Colors.red; // Saat hover
                            }
                            return Colors.blue[300]; // Normal
                          },
                        ),
                        foregroundColor:
                            WidgetStateProperty.resolveWith<Color?>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.hovered)) {
                              return Colors.brown; // Hover: teks coklat
                            }
                            return Colors
                                .white; // Default dan pressed: teks putih
                          },
                        ),
                      ),
                      onPressed: () {
                        // print("ditekan");
                        const snackbarCoba =
                            SnackBar(content: Text("Login berhasil!"));
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackbarCoba);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // The GestureDetector wraps the button.
                  Builder(
                      builder: (context) => InkWell(
                            borderRadius: BorderRadius.circular(25),
                            splashColor: Colors.red[200], //efek saat ditekan
                            highlightColor: Colors
                                .orange, // When the child is tapped, show a snackbar.
                            onTap: () {
                              const snackBar = SnackBar(content: Text('diTap'));

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            },
                            // The custom button
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: const Text('Btn'),
                            ),
                          )),
                  Image.asset(
                    "images/lake.jpg",
                    width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  )
                  // Image.network("https://picsum.photos/250?image=9")
                ],
              ),
            )));
  }
}

// void main() {
//   runApp(const MyApp());
// }
//bawaan
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         backgroundColor: Colors.blue, //pake manual
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
