import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/textfields/input_floating_label.dart';
import 'package:uitemps/src/display/widgets/textfields/input_prefix_icon.dart';
import 'package:uitemps/src/display/widgets/textfields/input_with_label.dart';
import 'package:uitemps/src/display/widgets/textfields/password_input_field.dart';
import 'package:uitemps/src/display/widgets/textfields/underline_textfield.dart';

class TextFieldsScreen extends StatelessWidget {
  TextFieldsScreen({Key? key}) : super(key: key);
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
            'InputWithFloatingLabel',
            InputWithFloatingLabel(inputController: cont),
          ),
          ButtonX(
            'InputPrefixIcon',
            InputPrefixIcon(inputController: cont),
          ),
          ButtonX(
            'InputWithLabel',
            InputWithLabel(
              inputController: cont,
              hintText: "Hint",
              labelText: "Label Text",
            ),
          ),
          ButtonX(
            'PasswordInput',
            PasswordInput(
              textEditingController: cont,
              hintText: "Hint",
            ),
          ),
          ButtonX(
            'CustomUnderlineTextField',
            CustomUnderlineTextField(
              controller: cont,
              textInputType: TextInputType.text,
            ),
          ),
        ],
      ),
    );
  }
}
