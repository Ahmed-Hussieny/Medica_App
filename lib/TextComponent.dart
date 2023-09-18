import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextComponent extends StatelessWidget {

  TextComponent({super.key, 
    required this.message,
    this.fontSize=25,
    this.fontColor=const Color(0xff0B8FAC),
    this.fontFamily = "",
    this.fontWeight=FontWeight.w700,
    this.letterSpacing=0,

  });
  String message;
  double fontSize;
  Color fontColor;
  String fontFamily;
  FontWeight fontWeight;
  double letterSpacing;
  @override
  Widget build(BuildContext context) {

    return Text(
                      message,
                      style: TextStyle(
                        fontWeight: fontWeight,
                        fontSize: fontSize,
                        color: fontColor,
                        fontFamily: fontFamily,
                        letterSpacing: letterSpacing,
                      ),
                    );
          
  }
}
