import 'package:code_mavericks_team_code/demo_data.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatefulWidget {
  DemoData _demoData;
  ProductCart(this._demoData);

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  bool isClicked = false;
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
                        image: NetworkImage(widget._demoData.imageUrl),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                    right: 20,
                    top: 20,
                    child: GestureDetector(
                      onTap: () {
                        isClicked = !isClicked;
                        setState(() {});
                      },
                      child: Icon(
                        isClicked ? Icons.favorite : Icons.favorite_border,
                        color: isClicked ? Colors.red : Colors.white,
                        size: 30,
                      ),
                    ))
              ],
            ),
          ),
          Text(
            widget._demoData.productName,
            style: TextStyle(fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "€",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                ),
              ),
              Text(
                " ${widget._demoData.price}",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
