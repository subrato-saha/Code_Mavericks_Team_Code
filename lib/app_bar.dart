import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Container(
          height: 80,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.transparent,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Icon(Icons.menu),
            Row(
              children: const [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.card_travel)
              ],
            )
          ]),
        ),
        Positioned(
            right: 18,
            top: 20,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white)),
            ))
      ]),
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
