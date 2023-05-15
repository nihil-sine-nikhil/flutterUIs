import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/toggle_butons/horizontal_category_list.dart';
import 'package:uitemps/src/display/widgets/toggle_butons/toggle_text_buttons.dart';

class ToggleButtonsScreen extends StatelessWidget {
  ToggleButtonsScreen({Key? key}) : super(key: key);
  final TextEditingController cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ButtonX(
            'HorizontalCategoriesView',
            HorizontalCategoriesView(),
          ),
          ButtonX(
            'ToggleTextButtons',
            ToggleTextButtons(texts: [
              Text("Text 1"),
              Text("Text 2"),
              Text("Text 3"),
              Text("Text 4"),
            ], selected: (int) {}),
          ),
        ],
      ),
    );
  }
}
