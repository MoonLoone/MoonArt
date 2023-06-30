

import 'package:flutter/material.dart';
import 'package:moon_art/presentation/navigation/routes.dart';

class CustomBottomNavigationBar extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => CustomBottomNavigationBarState();

}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>{

  List<BottomNavigationBarItem> bottomNavigationItemList = Routes.bottomNavigator.keys.map((item) =>
      BottomNavigationBarItem(
          label: item, icon: const Icon(Icons.account_balance)
      )
  ).toList();

  void _onNavigate(int index){

    Navigator.pushNamed(context, bottomNavigationItemList[index].label??"");

  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationItemList,
      onTap: _onNavigate,
    );
  }

}

