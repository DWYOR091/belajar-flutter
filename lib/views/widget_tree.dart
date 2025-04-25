import 'package:belajar_flutter/data/notifiers.dart';
import 'package:belajar_flutter/views/pages/home_page.dart';
import 'package:belajar_flutter/views/pages/profile_page.dart';
import 'package:belajar_flutter/views/pages/setting_page.dart';
import 'package:belajar_flutter/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
//final List<Widget> pages = const [HomePage(),ProfilePage()]; //jika ingin const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Belajar Flutter",
          ),
        ),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.login),
        actions: [
          SizedBox(
              child: Switch(
            value: isDarkModeNotifier.value,
            //thumbIcon: isDarkModeNotifier.value
            //     ? WidgetStateProperty.all(Icon(Icons.light_mode))
            //     : WidgetStateProperty.all(Icon(Icons.dark_mode)),
            thumbIcon: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.selected)) {
                  return Icon(Icons.light_mode);
                } else {
                  return Icon(Icons.dark_mode);
                }
              },
            ),
            onChanged: (value) {
              isDarkModeNotifier.value = value;
              print(value);
            },
          )),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(
                      title: "Settings",
                    );
                  },
                ));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return pages[value];
          // return  pages.elementAt(value); //cara 2
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
