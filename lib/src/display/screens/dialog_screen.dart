import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/dialogs/dialog.dart';
import 'package:uitemps/src/display/widgets/dialogs/dialog_with_buttons.dart';
import 'package:uitemps/src/display/widgets/dialogs/gradient_dialog.dart';

class DialogsScreen extends StatelessWidget {
  const DialogsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          ButtonX(
            'KDialog',
            KDialog(),
          ),
          ButtonX(
            'KDialogWithButtons',
            KDialogWithButtons(),
          ),
          ButtonX(
            'KGradientDialog',
            KGradientDialog(),
          ),
        ],
      ),
    );
  }
}
