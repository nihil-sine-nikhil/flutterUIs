import 'package:flutter/material.dart';

class OutlinedIconButton extends StatelessWidget {
  final double radius;
  final Widget icon;
  final Color outlineColor;
  final Function() onPressed;

  const OutlinedIconButton(
      {required this.icon,
      required this.outlineColor,
      required this.onPressed,
      this.radius = 48.0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: radius,
      height: radius,
      decoration: ShapeDecoration(
        color: Colors.transparent,
        shape: CircleBorder(side: BorderSide(color: outlineColor)),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: radius / 2,
        iconSize: radius / 2,
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
