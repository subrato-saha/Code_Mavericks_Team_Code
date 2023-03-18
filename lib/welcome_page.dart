import 'package:code_mavericks_team_code/my_home_page.dart';
import 'package:gui_shape/gui_shape.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                child: Stack(children: [
                  Positioned(
                    left: size.width * 0.21,
                    top: size.width * 0.35,
                    child: Transform.rotate(
                      angle: -math.pi / 11,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        dashPattern: [10, 7],
                        strokeWidth: 1.5,
                        color: Colors.grey,
                        child: Container(
                          height: 500,
                          width: 288,
                        ),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -math.pi / 11,
                    child: Container(
                      margin: EdgeInsets.only(
                          top: size.width * 0.1, left: size.width * 0.17),
                      child: Column(children: [
                        Text(
                          "Fastacy",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 350,
                          width: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=600"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ]),
                    ),
                  ),
                  Positioned(
                      bottom: size.width * 0.04,
                      right: size.width * 0.12,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Classy",
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold)),
                              Text("Fashion",
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      )),
                  star_shape2(
                    isFilled: false,
                    rightval: size.width * 0.04,
                    bottomval: size.width * 0.07,
                  ),
                  Positioned(
                    bottom: 0,
                    left: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      children: [
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(50)),
                        )
                      ],
                    ),
                  ),
                  star_shape(
                    isFilled: true,
                    rightval: 100,
                    topval: 50,
                  ),
                ]),
              )),
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Tops",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: "Varela")),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 3,
                            width: 20,
                            color: Colors.amber,
                          )
                        ],
                      ),
                      Text("T-Shirt",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "Varela")),
                      Text("Hoodies",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: "Varela")),
                      Text("126+ Categories",
                          style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontFamily: "Varela")),
                    ],
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  }),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign up",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                            size: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ))
              ]),
            ),
          ))
        ],
      ),
    );
  }
}

class star_shape extends StatelessWidget {
  star_shape({Key? key, this.isFilled, this.rightval, this.topval})
      : super(key: key);

  bool? isFilled;
  double? topval;
  double? rightval;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: topval,
      top: rightval,
      child: Container(
        height: 30,
        width: 30,
        child: GuiClipShape(
          shape: GuiShapeStar(
            sides: 4,
            cornerRadius: 0,
            startAngle: GeoAngle(degree: 0),
            clockwise: true,
            boxFit: BoxFit.cover,
            indentSideFactor: 0.3,
          ),
          shadows: [
            //GuiShadow(  color: Colors.red, elevation: 0.0 ,),
            GuiShadow(
                color: Colors.deepOrangeAccent,
                elevation: isFilled == false ? 1.40 : 0)
          ],
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: isFilled == true ? Colors.black : null,
            ),
          ),
        ),
      ),
    );
  }
}

class star_shape2 extends StatelessWidget {
  star_shape2({Key? key, this.isFilled, this.rightval, this.bottomval})
      : super(key: key);

  bool? isFilled;
  double? bottomval;
  double? rightval;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: rightval,
      bottom: bottomval,
      child: Container(
        height: 30,
        width: 30,
        child: GuiClipShape(
          shape: GuiShapeStar(
            sides: 4,
            cornerRadius: 0,
            startAngle: GeoAngle(degree: 0),
            clockwise: true,
            boxFit: BoxFit.cover,
            indentSideFactor: 0.3,
          ),
          shadows: [
            //GuiShadow(  color: Colors.red, elevation: 0.0 ,),
            GuiShadow(
                color: Colors.deepOrangeAccent,
                elevation: isFilled == false ? 1.40 : 0)
          ],
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: isFilled == true ? Colors.black : null,
            ),
          ),
        ),
      ),
    );
  }
}
