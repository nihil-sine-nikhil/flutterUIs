import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/dash_seperator/dash_seperator.dart';

class SeperatorsScreen extends StatelessWidget {
  const SeperatorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ButtonX('MySeparator', MySeparator()),
        ],
      ),
    );
  }
}
