import 'package:code_mavericks_team_code/demo_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductsDetails extends StatefulWidget {
  DemoData _demoData;
  ProductsDetails(this._demoData);

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  List size = ["S", "M", "L", "XL", "XXL"];
  List<Color> color = [
    Colors.grey.shade200,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.grey
  ];
  int selectedSize = 2;
  int selectedColor = 0;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: (() {
                isFavorite = !isFavorite;
                setState(() {});
              }),
              child: isFavorite
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                    ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(widget._demoData.imageUrl),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget._demoData.productName,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.amber,
                    ),
                    Text(
                      " 4.8",
                      style: TextStyle(fontSize: 15, fontFamily: "Varela"),
                    ),
                    Text(
                      "(2.6k+ review)",
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          fontFamily: "Varela"),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Select Size",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Varela",
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 45,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          selectedSize = index;
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade200,
                              ),
                              color:
                                  selectedSize == index ? Colors.orange : null,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(size[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Varela",
                                color:
                                    selectedSize == index ? Colors.white : null,
                              )),
                        ),
                      )),
                  separatorBuilder: ((context, index) => SizedBox(
                        width: 10,
                      )),
                  itemCount: size.length),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Select Color",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Varela",
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          selectedColor = index;
                          setState(() {});
                        },
                        child: Container(
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: selectedColor == index
                                      ? Colors.amber
                                      : Colors.white),
                              color: color[index],
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )),
                  separatorBuilder: ((context, index) => SizedBox(
                        width: 10,
                      )),
                  itemCount: color.length),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              minWidth: double.infinity,
              height: 60,
              color: Colors.black,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
