import 'package:flutter/material.dart';

import 'package:uy1money/colors.dart';
import 'package:uy1money/screen/Input.dart';
import 'package:uy1money/screen/my_homePage.dart';
import 'package:uy1money/screen/registration.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: BG_COLOR,
        body: Container(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: widht,
                height: heigth * 0.3,
                child: Stack(
                  children: [
                    Positioned(
                      left: widht * 0.35,
                      top: 90,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: RED_COLOR,
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: widht * 0.45,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Blue_COLOR,
                      ),
                    ),
                    Positioned(
                        top: 160,
                        left: widht * 0.35,
                        child: Text(
                          "UY1 MONEY",
                          style: TextStyle(
                              color: WHITE_COLOR,
                              fontSize: 16,
                              fontFamily: "Poppins-semiBold"),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  "Se Connecter",
                  style: TextStyle(
                      color: WHITE_COLOR, fontSize: 30, fontFamily: "Bold"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Input(
                  isTel: false,
                  hintText: "Nom d’utilisateur",
                  prefixIcon: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                  suffixIcon: Image.asset("assets/images/_.png")),
              SizedBox(
                height: 32,
              ),
              Input(
                  isTel: false,
                  hintText: "Mot de passe",
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                  suffixIcon: Image.asset("assets/images/_.png")),
              SizedBox(
                height: 8,
              ),
              Text(
                "J’ai oublié mon mot de passe",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: WHITE_COLOR, fontSize: 10, fontFamily: "Regular"),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                child: Container(
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: violet_COLOR),
                      color: violet_COLOR,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Se Connecter",
                    style: TextStyle(
                        color: WHITE_COLOR,
                        fontSize: 16,
                        fontFamily: "Poppins-bold"),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Je n’ai pas de compte! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: WHITE_COLOR, fontSize: 14, fontFamily: "Light"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Row(
                      children: [
                        Text(
                          "S’enregistrer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: WHITE_COLOR,
                              fontSize: 14,
                              fontFamily: "Bold"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: WHITE_COLOR,
                          size: 25,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
