import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const accentColor = Color(0xffffffff);
    const bgColor = Color(0xff002096);

    const double borderRadius = 15;

    return ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(right: 75, left: 75, top: 15, bottom: 15)),
          backgroundColor: MaterialStateProperty.all(bgColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius)),
          )),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: accentColor, fontSize: 16),
      ),
    );
  }
}
