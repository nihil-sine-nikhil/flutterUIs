import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/cards/classic_tile.dart';
import 'package:uitemps/src/display/widgets/cards/detailed_list.dart';
import 'package:uitemps/src/display/widgets/cards/glass_card.dart';
import 'package:uitemps/src/display/widgets/cards/list_tile.dart';
import 'package:uitemps/src/display/widgets/cards/vertical_card.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

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
            'KTile',
            KTile(),
          ),
          ButtonX(
              'DetailedList',
              DetailedList(
                title: 'Title',
                subtitle: "subtitle goes here",
              )),
          ButtonX(
            'GlassCard',
            GlassCard(
              title: 'Title',
              subtitle: "subtitle goes here",
              icon: Icon(Icons.play_arrow),
            ),
          ),
          ButtonX(
            'ListTileWithArrow',
            ListTileWithArrow(
              text: 'Title',
              onTap: () {},
              leadingIcon: Icon(Icons.play_arrow),
              trailingIcon: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          ButtonX(
            'VerticalCard',
            VerticalCard(
              'Title',
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
              "subtitle goes here",
            ),
          ),
        ],
      ),
    );
  }
}
