import 'package:flutter/material.dart';
import 'package:uitemps/src/display/screens/buttons_screens.dart';
import 'package:uitemps/src/display/widgets/banners/info_banner_with_actions.dart';

class BannersScreen extends StatelessWidget {
  const BannersScreen({Key? key}) : super(key: key);

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
            'InfoBannerActions',
            InfoBannerActions(
              icon: Icon(Icons.wifi),
              text: "Your internet connection was restored",
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text('Learn More'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Dismiss'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
