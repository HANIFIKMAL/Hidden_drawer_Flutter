import 'package:flutter/material.dart';
import 'package:hdrawer/homepage.dart';
import 'package:hdrawer/setting.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class Hiddendrawer extends StatefulWidget {
  const Hiddendrawer({super.key});

  @override
  State<Hiddendrawer> createState() => _HiddendrawerState();
}

class _HiddendrawerState extends State<Hiddendrawer> {
  List<ScreenHiddenDrawer> _pages =[];

  @override
    void initState() {
      // TODO: implement initState
      super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
        baseStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        name: "Homepage",selectedStyle: TextStyle(),
        colorLineSelected: Colors.blue
        ),
        Homepage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
        baseStyle: TextStyle( 
          fontWeight: FontWeight.bold,
          fontSize: 16,),
          name: "Setting",
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.blue
        ),
        Setting(),
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.cyan.shade500,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 45,
    );
  }
}