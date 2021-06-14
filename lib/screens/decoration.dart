import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const buttonColor = const Color(0XFFd83e56);


class myDecoration {

  static InputDecoration TextFormFieldDecoration(String hintText, String labelText) {
    return InputDecoration(
      errorMaxLines: 2,
      hintText: hintText,
      labelText: labelText,
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: buttonColor, width: 1.0),
      ),
    );
  }

  static BoxDecoration myBoxDecoration(){
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 7.0,
          spreadRadius: 4.0,
          offset: Offset(0, 0),
        ),
      ],
    );
  }

  static AlertStyle myAlertStyle(){
    return AlertStyle(
      animationType: AnimationType.fromTop,
      animationDuration: Duration(milliseconds: 600),
      isCloseButton: true,
      descStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
      titleStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: buttonColor,
      ),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(1.0),
        side: BorderSide(
          width: 1.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}


class MyTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  MyTextStyle({this.text,this.fontSize,this.textColor});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: textColor,
      ),
    );
  }
}


