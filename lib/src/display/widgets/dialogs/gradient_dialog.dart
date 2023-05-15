import 'package:flutter/material.dart';

class KGradientDialog extends StatelessWidget {
  const KGradientDialog({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor, secondaryColor]),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.1)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: accentColor.withOpacity(.05),
              radius: 25,
              child: Icon(Icons.feed, color: Color(0xffffffff)),
            ),
            const SizedBox(
              height: 15,
            ),
            Text("How are you doing?",
                style: TextStyle(
                    color: accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 3.5,
            ),
            Text("This is a sub text, use it to clarify",
                style: TextStyle(
                    color: accentColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
