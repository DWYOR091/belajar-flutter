import 'package:belajar_flutter/views/widget_tree.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login"),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // HeroWidget(),
              Text("Silahkan Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Lottie.asset("assets/lotties/login.json")),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Masukan Username!",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukan Password!",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return WidgetTree();
                        },
                      ));
                    },
                    child: Text("Login")),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
