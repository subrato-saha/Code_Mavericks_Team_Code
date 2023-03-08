import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 50,
        width: double.infinity,
        padding: EdgeInsets.all(20),
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
    ]);
  }
}
