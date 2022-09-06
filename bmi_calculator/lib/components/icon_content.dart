import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  // const IconContent({
  //   Key? key,
  // }) : super(key: key);
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 80,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
