import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/banners_screen.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/screens/cards_screen.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              ContX(
                  "All Buttons",
                  () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ButtonsScreen()),
                      )),
              ContX(
                  "All Cards",
                  () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CardsScreen()),
                      )),
              ContX(
                  "All Banners",
                  () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BannersScreen()),
                      )),
            ]),
      ),
    );
  }
}

class ContX extends StatelessWidget {
  ContX(this.text, this.onTap);
  String text;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            text: text,
            onPressed: onTap,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
