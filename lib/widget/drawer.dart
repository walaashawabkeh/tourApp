import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tour/screens/favourite.dart';
import 'package:tour/screens/home_screen.dart';
import 'package:tour/screens/profile.dart';
import 'package:tour/screens/welcoming/welcome.dart';

class SideBar extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 10);

  @override
  Widget build(BuildContext context) {
    final name = 'Walaa Alshawabkeh';
    final phoneNum = '0770995199';

    return Drawer(
      child: Material(
        color: Color(0xffafa29f),
        child: ListView(
          padding: padding,
          children: [
            buildHeader(
              phone: phoneNum,
              name: name,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Profile(),
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            buildMenuItem(
                text: 'Profile',
                icon: Icons.person,
                onClicked: () => selectedItem(context, 0)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Home',
                icon: Icons.home_outlined,
                onClicked: () => selectedItem(context, 1)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Favourites',
                icon: Icons.favorite_border,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'People',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 24,
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 24,
            ),
            buildMenuItem(
                text: 'Settings',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Notifications',
                icon: Icons.notifications_outlined,
                onClicked: () => selectedItem(context, 4)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Sign out',
                icon: Icons.logout,
                onClicked: () => selectedItem(context, 5)),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Profile(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Home(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Favourite(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Profile(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Profile(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => VideoApp(),
        ));
        break;
    }
  }

  buildHeader(
          {
          required String name,
          required String phone,
          required VoidCallback onClicked}) =>
      InkWell(
          onTap: onClicked,
          child: Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 30)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/me.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      phone,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ));
}
