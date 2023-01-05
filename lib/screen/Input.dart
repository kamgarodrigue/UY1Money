import 'package:flutter/material.dart';
import 'package:uy1money/colors.dart';

class Input extends StatefulWidget {
  String? hintText;
  Widget suffixIcon, prefixIcon;
  bool? isTel;
  Input(
      {Key? key,
      required this.hintText,
      required this.isTel,
      required this.prefixIcon,
      required this.suffixIcon})
      : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: GRAY_COLOR.withOpacity(0.1),
          child: TextField(
              keyboardType: TextInputType.text,
              onTap: () {},
              onSubmitted: (_) {},
              style: TextStyle(
                  color: WHITE_COLOR,
                  fontSize: 15,
                  fontFamily: "Poppins-medium"),
              textAlign: TextAlign.start,
              onChanged: (value) {},
              decoration: InputDecoration(
                prefixIcon: widget.prefixIcon,

                // ]),
                suffixIcon: widget.suffixIcon,
                contentPadding: const EdgeInsets.all(12),
                // border: InputBorder(),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                    color: WHITE_COLOR,
                    fontSize: 15,
                    fontFamily: "Poppins-medium"),
              )),
        ),
      ],
    );
  }
}
