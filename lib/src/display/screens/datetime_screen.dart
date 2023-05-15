import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';

class DateTimeScreen extends StatelessWidget {
  const DateTimeScreen({Key? key}) : super(key: key);

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
              'DateTime Range',
              CustomButton(
                text: "click",
                onPressed: () async {
                  final DateTimeRange? newDate = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2017, 1),
                    lastDate: DateTime(2022, 7),
                    helpText: 'Select a date',
                  );
                  print('selected range $newDate');
                },
              )),
        ],
      ),
    );
  }
}
