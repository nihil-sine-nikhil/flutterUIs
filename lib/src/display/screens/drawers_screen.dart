import 'package:flutter/material.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';
import 'package:uitemps/src/display/widgets/drawers/searchfield_drawer.dart';

class DrawersScreen extends StatelessWidget {
  const DrawersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomButton(
            text: "DrawerWithSearchField",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DrawerWithSearchField()),
              );
            },
          )
        ],
      ),
    );
  }
}
