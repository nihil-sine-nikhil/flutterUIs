import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/loading_indicators/dotted_loading_indicator.dart';
import 'package:uitemps/src/display/widgets/loading_indicators/jumping_dots.dart';

class IndicatorsScreen extends StatelessWidget {
  const IndicatorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ButtonX(
              'JumpingDots',
              JumpingDots(
                color: Colors.purpleAccent,
              )),
          ButtonX(
              'DottedCircularProgressIndicator',
              DottedCircularProgressIndicator(
                currentDotColor: Colors.purple,
                defaultDotColor: Colors.purpleAccent,
                numDots: 8,
              )),
        ],
      ),
    );
  }
}
