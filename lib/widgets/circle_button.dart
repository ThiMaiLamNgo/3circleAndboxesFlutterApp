import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  //const CircleButton({Key? key}) : super(key: key);
  final Function()? onPressed;
  Color color;
  CircleButton({required this.onPressed, required this.color});

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: widget.color,
          shape: BoxShape.circle,
        ),
      ),
      onPressed: widget.onPressed,
    );
  }
}
