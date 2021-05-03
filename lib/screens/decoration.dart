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

}
