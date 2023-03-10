import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  Color? IconColor = Colors.black;
  CircularButton(
      {super.key,
      required this.buttonIcon,
      required this.buttonAction,
      this.IconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            buttonIcon,
            color: IconColor,
            size: 25.0,
          )),
    );
  }
}
