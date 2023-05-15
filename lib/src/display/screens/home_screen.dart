import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/banners_screen.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/screens/cards_screen.dart';
import 'package:uitemps/src/display/screens/circle_avatars.dart';
import 'package:uitemps/src/display/screens/comments_screen.dart';
import 'package:uitemps/src/display/screens/datetime_screen.dart';
import 'package:uitemps/src/display/screens/dialog_screen.dart';
import 'package:uitemps/src/display/screens/drawers_screen.dart';
import 'package:uitemps/src/display/screens/image_picker_screen.dart';
import 'package:uitemps/src/display/screens/indicators_screen.dart';
import 'package:uitemps/src/display/screens/search_bars_screen.dart';
import 'package:uitemps/src/display/screens/seperators_screen.dart';
import 'package:uitemps/src/display/screens/snackbars_screen.dart';
import 'package:uitemps/src/display/screens/textfields_screen.dart';
import 'package:uitemps/src/display/screens/toggle_buttons_screen.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: ListView(children: [
          SizedBox(
            height: 50,
          ),
          ContX(
              "Buttons",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ButtonsScreen()),
                  )),
          ContX(
              "Cards",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardsScreen()),
                  )),
          ContX(
              "Banners",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BannersScreen()),
                  )),
          ContX(
              "Circle Avatars",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CircleAvatarsScreen()),
                  )),
          ContX(
              "Comments",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CommentsScreen()),
                  )),
          ContX(
              "Seperators",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SeperatorsScreen()),
                  )),
          ContX(
              "DateTime",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DateTimeScreen()),
                  )),
          ContX(
              "Dialogs",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DialogsScreen()),
                  )),
          ContX(
              "Drawers",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrawersScreen()),
                  )),
          ContX(
              "Image Picker",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ImagePickerScreen()),
                  )),
          ContX(
              "Loading Indicators",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IndicatorsScreen()),
                  )),
          ContX(
              "Search Bars",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchBarsScreen()),
                  )),
          ContX(
              "Snack Bars",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SnackbarsScreen()),
                  )),
          ContX(
              "Text Fields",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextFieldsScreen()),
                  )),
          ContX(
              "Toggle Buttons",
              () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ToggleButtonsScreen()),
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
