import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({super.key, required this.menu_Name});
  String menu_Name;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        isClicked = !isClicked;
        setState(() {});
      }),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: isClicked ? Colors.black : null,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          widget.menu_Name,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isClicked ? Colors.white : Colors.black),
        )),
      ),
    );
  }
}
