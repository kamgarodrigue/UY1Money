import 'package:flutter/material.dart';
import 'package:uy1money/colors.dart';

class SendMoney extends StatefulWidget {
  SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
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
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: WHITE_COLOR,
              )),
          actions: [Image.asset("assets/icons/Vector (2).png")],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Stack(
            children: [
              ListView(
                children: [
                  Text(
                    "Total Balance",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: GRAY_COLOR,
                        fontSize: 13,
                        fontFamily: "Poppins-light"),
                  ),
                  SizedBox(height: 16),
                  RichText(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.end,
                    textDirection: TextDirection.rtl,
                    softWrap: true,
                    maxLines: 4,
                    textScaleFactor: 1,
                    text: TextSpan(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis at varius aliquam porttitor neque, proin. Vehicula suscipit vel volutpat cras nec risus tincidunt elit.',
                      style: TextStyle(
                          color: GRAY_COLOR,
                          fontSize: 13,
                          fontFamily: "Poppins-light"),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Learn More',
                          style: TextStyle(
                              color: Blue_COLOR,
                              fontSize: 13,
                              fontFamily: "Poppins-light"),
                        ),
                      ],
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "To",
                        style: TextStyle(
                            color: WHITE_COLOR,
                            fontSize: 15,
                            fontFamily: "Poppins-medium"),
                      ),
                      Container(
                        width: widht * 0.85,
                        child: Divider(
                          color: Colors.white,
                          height: 10,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Account Number :",
                          style: TextStyle(
                              color: WHITE_COLOR,
                              fontSize: 15,
                              fontFamily: "Poppins-semiBold"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: GRAY_COLOR, style: BorderStyle.solid)),
                          child: TextFormField(
                            initialValue: '1478 2255 4595 9874',
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 16)),
                            style: TextStyle(
                                color: WHITE_COLOR,
                                fontSize: 15,
                                fontFamily: "Poppins-medium"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Enter Amount:",
                          style: TextStyle(
                              color: WHITE_COLOR,
                              fontSize: 15,
                              fontFamily: "Poppins-semiBold"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: GRAY_COLOR, style: BorderStyle.solid)),
                          child: TextFormField(
                            initialValue: '\$2,150.00',
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 16)),
                            style: TextStyle(
                                color: WHITE_COLOR,
                                fontSize: 15,
                                fontFamily: "Poppins-medium"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Password:",
                          style: TextStyle(
                              color: WHITE_COLOR,
                              fontSize: 15,
                              fontFamily: "Poppins-semiBold"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: GRAY_COLOR, style: BorderStyle.solid)),
                          child: TextFormField(
                            obscureText: true,
                            initialValue: '1234567',
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 16)),
                            style: TextStyle(
                                color: WHITE_COLOR,
                                fontSize: 15,
                                fontFamily: "Poppins-medium"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(96, 68, 206, 1),
                      ),
                      width: 171,
                      height: 44,
                      child: Text(
                        "Send Money",
                        style: TextStyle(
                            color: WHITE_COLOR,
                            fontSize: 16,
                            fontFamily: "Poppins-bold"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 70,
                      width: 297,
                      decoration: BoxDecoration(
                          border: Border.all(color: WHITE_COLOR),
                          color: violetlight_COLOR,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    //color: violet_COLOR,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Available Balance",
                                      textAlign: TextAlign.start,
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
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                            GestureDetector(
                              child: Container(
                                height: 50,
                                width: 115,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    border: Border.all(color: violet_COLOR),
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
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
