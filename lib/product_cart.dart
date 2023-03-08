import 'package:code_mavericks_team_code/demo_data.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  DemoData _demoData;
  ProductCart(this._demoData);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
            right: 20,
            top: 20,
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 30,
            ))
      ],
    );
  }
}
