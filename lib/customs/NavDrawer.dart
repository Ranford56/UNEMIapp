import 'package:flutter/material.dart';
import 'package:unemi/utils/const.dart';
import 'package:unemi/utils/widgetFunc.dart';

//clase de la sidebar
class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: COLOR_SECONDARY,
        child: ListView(
          children: [
            addVerticalScape(20.0),
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
                  const Icon(Icons.account_circle_sharp, color: COLOR_TERCIARY, size: 120),
                  Container(
                    decoration: BoxDecoration(
                      color: COLOR_TERCIARY,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Lorem Ipsum', style: TextStyle(color: COLOR_PRIMARY)),
                    )
                  )
                ],
              )
            ),
            ListTile(iconColor: COLOR_PRIMARY, textColor: COLOR_PRIMARY ,leading: Icon(Icons.home), title: Text('titulo 1'), onTap: () {},),
            ListTile(iconColor: COLOR_PRIMARY, textColor: COLOR_PRIMARY ,leading: Icon(Icons.accessibility_new_sharp), title: Text('titulo 2'), onTap: () {},),
            ListTile(iconColor: COLOR_PRIMARY, textColor: COLOR_PRIMARY ,leading: Icon(Icons.account_tree), title: Text('titulo 3'), onTap: () {},),
          ],
        ),
      );
  }
}