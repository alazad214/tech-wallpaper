import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_wallpaper/screens/settingsscreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(children: [
        const SizedBox(height: 20),
        Align(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close)),
        )),
        _CustomListTile("Home", Icons.home, () {
          Navigator.of(context).pop();
        }),
        _CustomListTile("Contact", Icons.mail, () {}),
        _CustomListTile("Policy", Icons.privacy_tip_rounded, () {}),
        _CustomListTile("Settings", Icons.settings, () {}),
      ]),
    );
  }
}

Widget _CustomListTile(text, icon, ontap) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.black,
      size: 25,
    ),
    title: Text(
      text,
      style: const TextStyle(fontSize: 15),
    ),
    onTap: ontap,
  );
}
