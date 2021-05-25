import 'package:flutter/material.dart';

class SquareDesignImageContainer extends StatelessWidget {
  final String imageAsset;
  SquareDesignImageContainer(this.imageAsset);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image.asset(imageAsset),
      ),
    );
  }
}

