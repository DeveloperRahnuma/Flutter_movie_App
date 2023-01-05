import 'package:flutter/material.dart';

class HorizantalDivider extends StatelessWidget {
  const HorizantalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        height: 0.5,
        color: Colors.blueGrey,
      ),
    );
  }
}
