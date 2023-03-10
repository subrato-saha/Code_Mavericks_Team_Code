import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu(
      {super.key,
      required this.menu_Name,
      required this.selectedIndex,
      required this.index});
  String menu_Name;
  int selectedIndex, index;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: widget.selectedIndex == widget.index ? Colors.black : null,
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        widget.menu_Name,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: widget.selectedIndex == widget.index
                ? Colors.white
                : Colors.black),
      )),
    );
  }
}
