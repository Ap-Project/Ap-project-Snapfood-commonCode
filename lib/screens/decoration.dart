import 'package:flutter/material.dart';

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
}


class myTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  myTextStyle({this.text,this.fontSize,this.textColor});
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


