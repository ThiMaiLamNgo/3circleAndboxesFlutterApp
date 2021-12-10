import 'package:flutter/material.dart';

class BoxButton extends StatelessWidget {
  //const BoxButton({Key? key}) : super(key: key);
  final Function()? onPressed;
  Color color;
  BoxButton({required this.onPressed, required this.color});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        height: 100,
        width: 100,
        color: color,
      ),
      onPressed: onPressed,
    );
  }
}
