import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/search_bars/clean_rounded_search_bar.dart';

class SearchBarsScreen extends StatelessWidget {
  SearchBarsScreen({Key? key}) : super(key: key);
  final TextEditingController cont = TextEditingController();
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
              'RoundedSearchInput',
              RoundedSearchInput(
                hintText: "Hint Text",
                textController: cont,
              )),
        ],
      ),
    );
  }
}
