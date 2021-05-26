import 'package:flutter/material.dart';
import 'decoration.dart';

class ExpandingRowStyleContainer extends StatelessWidget {
  final String text;
  final int number;

  ExpandingRowStyleContainer(this.text,this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
                child: MyTextStyle(
                  text: text,
                  fontSize: 20.0,
                )),
            Spacer(),
            Expanded(
                child: MyTextStyle(
                  text: number.toString(),
                  fontSize: 15.0,
                )),
          ],
        ),
      ),
    );
  }
}
