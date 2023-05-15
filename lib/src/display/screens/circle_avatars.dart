import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/circle_avatars/circle_avatar_with_transition.dart';

class CircleAvatarsScreen extends StatelessWidget {
  const CircleAvatarsScreen({Key? key}) : super(key: key);

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
            'CircleAvatarWithTransition',
            CircleAvatarWithTransition(
              primaryColor: Colors.purple,
              image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
