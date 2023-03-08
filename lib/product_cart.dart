import 'package:code_mavericks_team_code/demo_data.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  DemoData _demoData;
  ProductCart(this._demoData);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(_demoData.imageUrl),
                        fit: BoxFit.cover,
                      )),
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
            ),
          ),
          Text(
            _demoData.productName,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "€${_demoData.price}",
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
