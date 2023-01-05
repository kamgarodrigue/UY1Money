import 'package:flutter/material.dart';
import 'package:uy1money/colors.dart';
import 'package:uy1money/screen/SendMoney.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: BG_COLOR,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: BG_COLOR,
          leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/Vector.png",
                height: 17,
              )),
          actions: [Image.asset("assets/icons/Vector (2).png")],
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Text(
                    "Total Balance",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: GRAY_COLOR,
                        fontSize: 13,
                        fontFamily: "Poppins-light"),
                  ),
                  Text(
                    "\$ 3,851.59",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: WHITE_COLOR,
                        fontFamily: "Poppins-bold",
                        fontSize: 32),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: widht,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                gradient: bg,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "1478 2255 4595 9874",
                                  style: TextStyle(
                                      color: WHITE_COLOR,
                                      fontSize: 16,
                                      fontFamily: "Poppins-medium"),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  height: 50,
                                  width: widht,

                                  ///color: WHITE_COLOR,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Card holder",
                                        style: TextStyle(
                                            color: GRAY_COLOR,
                                            fontSize: 16,
                                            fontFamily: "Poppins-medium"),
                                      ),
                                      Text(
                                        "Kamga Rodrigue",
                                        style: TextStyle(
                                            color: WHITE_COLOR,
                                            fontSize: 16,
                                            fontFamily: "Poppins-bold"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            left: widht * 0.6,
                            top: 90,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: RED_COLOR,
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: widht * 0.7,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Blue_COLOR,
                            ),
                          ),
                          Positioned(
                              top: 160,
                              left: widht * 0.62,
                              child: Text(
                                "UY1 MONEY",
                                style: TextStyle(
                                    color: WHITE_COLOR,
                                    fontSize: 16,
                                    fontFamily: "Poppins-semiBold"),
                              )),
                        ],
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 60,
                    width: 260,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(96, 68, 206, 1),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            child: Container(
                              height: 50,
                              width: 115,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: BG_COLOR,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "Debit",
                                style: TextStyle(
                                    color: WHITE_COLOR,
                                    fontSize: 16,
                                    fontFamily: "Poppins-bold"),
                              ),
                            ),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SendMoney(),
                                )),
                          ),
                          Container(
                            height: 50,
                            width: 115,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                //color: violet_COLOR,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "Credit",
                              style: TextStyle(
                                  color: WHITE_COLOR,
                                  fontSize: 16,
                                  fontFamily: "Poppins-bold"),
                            ),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: widht,
                height: 354,
                padding: EdgeInsets.only(right: 16, left: 16),
                decoration: BoxDecoration(
                    color: violetlight_COLOR,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      5,
                      (index) => Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 47,
                                        width: 59,
                                        decoration: BoxDecoration(
                                            color: violet_COLOR,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          "UY1M",
                                          style: TextStyle(
                                              color: WHITE_COLOR,
                                              fontSize: 16,
                                              fontFamily: "Poppins-semiBold"),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Container(
                                        height: 47,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Credit",
                                              style: TextStyle(
                                                  color: WHITE_COLOR,
                                                  fontSize: 16,
                                                  fontFamily:
                                                      "Poppins-semiBold"),
                                            ),
                                            Text(
                                              "KAMGOUM Dora",
                                              style: TextStyle(
                                                  color: GRAY_COLOR,
                                                  fontSize: 14,
                                                  fontFamily: "Poppins-light"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "-\$250",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color: RED_COLOR,
                                        fontSize: 14,
                                        fontFamily: " Poppins-medium"),
                                  ),
                                ]),
                          )),
                ),
              ),
            )
          ],
        ));
  }
}
