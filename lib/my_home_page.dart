import 'package:code_mavericks_team_code/app_bar.dart';
import 'package:code_mavericks_team_code/demo_data.dart';
import 'package:code_mavericks_team_code/menu.dart';
import 'package:code_mavericks_team_code/product_cart.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List menu = ["All", "Winter", "Woman", "Eyeware", "Man", "Summner"];
    List products = DemoData.alldata();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyAppBar(),
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Find your style",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => Menu(
                          menu_Name: menu[index],
                        )),
                    separatorBuilder: ((context, index) => SizedBox(width: 10)),
                    itemCount: menu.length),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 360,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductCart(products[index]),
                separatorBuilder: ((context, index) => SizedBox(
                      width: 10,
                    )),
                itemCount: products.length),
          )
        ],
      )),
    );
  }
}
