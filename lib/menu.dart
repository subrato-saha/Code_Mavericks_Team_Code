import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({super.key, required this.menu_Name});
  String menu_Name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: Center(child: Text(menu_Name)),
    );
  }
}
