import 'package:flutter/material.dart';

class AddressAndLocation extends StatelessWidget {
  final String address;
  AddressAndLocation(this.address);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          size: 20.0,
        ),
        SizedBox(
          width: 2.0,
        ),
        Text(address)
      ],
    );
  }
}
