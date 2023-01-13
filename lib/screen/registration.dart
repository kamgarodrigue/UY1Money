import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';
import 'package:uy1money/api/AuthService.dart';
import 'package:uy1money/colors.dart';
import 'package:uy1money/model/client.dart';
import 'package:uy1money/screen/Input.dart';
import 'package:uy1money/screen/login.dart';
import 'package:uy1money/screen/my_homePage.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final heigth = MediaQuery.of(context).size.height;
    final widht = MediaQuery.of(context).size.width;
    Client client = Client(
        id: "",
        login: "",
        nom: "",
        password: "",
        prenom: "",
        compte: null,
        telephone: "");
    return Scaffold(
        backgroundColor: BG_COLOR,
        body: Container(
          padding: EdgeInsets.only(
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
                padding: EdgeInsets.only(left: 32),
                child: Text(
                  "S’enregistrer",
                  style: TextStyle(
                      color: WHITE_COLOR, fontSize: 30, fontFamily: "Bold"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Input(
                  onChanged: (value) {
                    client.nom = value;
                    client.login = value;
                  },
                  isTel: false,
                  hintText: "Nom",
                  prefixIcon: Icon(Icons.person_outlined),
                  suffixIcon: Image.asset("assets/images/_.png")),
              const SizedBox(
                height: 32,
              ),
              Input(
                  onChanged: (value) {
                    client.prenom;
                  },
                  isTel: false,
                  hintText: "email",
                  prefixIcon: Icon(Icons.mail_outline),
                  suffixIcon: Image.asset("assets/images/_.png")),
              const SizedBox(
                height: 32,
              ),
              Input(
                  onChanged: (value) {
                    client.password = value;
                  },
                  isTel: false,
                  hintText: "Mot de passe",
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Image.asset("assets/images/_.png")),
              const SizedBox(
                height: 32,
              ),
              InternationalPhoneNumberInput(
                hintText: "Numerode Telephone",

                textStyle: TextStyle(
                    color: WHITE_COLOR,
                    fontSize: 15,
                    fontFamily: "Poppins-medium"),
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                  client.telephone = number.phoneNumber;
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  //trailingSpace: false,
                  leadingPadding: 8,
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(
                    color: WHITE_COLOR,
                    fontSize: 15,
                    fontFamily: "Poppins-medium"),

                //textFieldController: controller,
                formatInput: false,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                // inputBorder: OutlineInputBorder(),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
              const SizedBox(
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
                    "S’enregistrer",
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
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Ou se connecter avec",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: WHITE_COLOR, fontSize: 14, fontFamily: "Bold"),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "J’ai déjà un compte! ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: WHITE_COLOR, fontSize: 14, fontFamily: "Light"),
                  ),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<AuthService>()
                          .register(client)
                          .then((value) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      });
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Row(
                      children: [
                        const Text(
                          "Se connecter",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: WHITE_COLOR,
                              fontSize: 14,
                              fontFamily: "Bold"),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.arrow_back,
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
