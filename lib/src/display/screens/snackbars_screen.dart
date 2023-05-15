import 'package:flutter/material.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';
import 'package:uitemps/src/display/widgets/snackbar/custom_snackbar.dart';
import 'package:uitemps/src/display/widgets/snackbar/error_snackbar.dart';

class SnackbarsScreen extends StatelessWidget {
  const SnackbarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomButton(
            text: "CustomSnackBarMsg",
            onPressed: () async {
              await CustomSnackBarMsg(
                  text: "This is a snackbar", context: context, time: 2);
            },
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            text: "CustomErrorSnackBarMsg",
            onPressed: () async {
              await CustomErrorSnackBarMsg(
                  text: "This is a snackbar", context: context, time: 2);
            },
          ),
        ],
      ),
    );
  }
}
