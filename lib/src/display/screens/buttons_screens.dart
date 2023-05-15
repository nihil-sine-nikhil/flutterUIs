import 'package:flutter/material.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';
import 'package:uitemps/src/display/widgets/buttons/gradient_button.dart';
import 'package:uitemps/src/display/widgets/buttons/loading_button.dart';
import 'package:uitemps/src/display/widgets/buttons/outlined_button.dart';
import 'package:uitemps/src/display/widgets/buttons/outlined_button_with_icon.dart';

import '../../domain/constants/custom_colors.dart';
import '../widgets/buttons/icon_butons/gradient_icon_button.dart';
import '../widgets/buttons/icon_butons/outlined_icon_button.dart';
import '../widgets/buttons/rounded_image_button.dart';
import '../widgets/buttons/toggle_animated_icon_button.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ButtonX(
            'ToggleAnimatedIconButton',
            ToggleAnimatedIconButton(
              onPressed: (bool) {},
              toggleItems: ["Play", "Pause"],
              toggleIcon: AnimatedIcons.arrow_menu,
            ),
          ),
          ButtonX(
            'RoundedImageButton',
            RoundedImageButton(
              text: "Press",
              onPressed: () {},
            ),
          ),
          ButtonX(
            'GradientIconButton',
            GradientIconButton(
              gradient: gradient4(),
              icon: Icon(Icons.play_arrow),
              onPressed: () {},
            ),
          ),
          ButtonX(
            'OutlinedIconButton',
            OutlinedIconButton(
              icon: Icon(Icons.play_arrow),
              outlineColor: Colors.purple,
              onPressed: () {},
            ),
          ),
          ButtonX(
            'CustomButton',
            CustomButton(
              text: "Click",
              onPressed: () {},
            ),
          ),
          ButtonX(
            'CustomGradientButton',
            CustomGradientButton(
              text: "Click",
              onPressed: () {},
            ),
          ),
          ButtonX(
            'LoadingAnimatedButton',
            LoadingAnimatedButton(
              child: Text('Click'),
              onTap: () {},
            ),
          ),
          ButtonX(
            'CustomOutlinedButton',
            CustomOutlinedButton(
              text: "Click",
              onPressed: () {},
            ),
          ),
          ButtonX(
            'CustomOutlinedIconButton',
            CustomOutlinedIconButton(
              text: "Click",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonX extends StatelessWidget {
  ButtonX(this.text, this.widget);
  String text;
  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget,
          Text(text),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
