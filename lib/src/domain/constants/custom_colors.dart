import 'package:flutter/material.dart';

const kShimmerBase = Color(0xFFC2D398);
const kShimmerHighlight = Color(0xFFD8E9A8);
const kPaperColor = Color(0xFFffe1ba);
const kPaperColorText = Color(0xFFffc476);
const kPlasticColor = Color(0xFFCCFFFA);
const kPlasticColorText = Color(0xFF49ffed);
const kMetalColor = Color(0xFFF0D3FF);
const kMetalColorText = Color(0xFFda94ff);
// const kOtherColor = Color(0xFFd2ffba);
const kOtherColor = Color(0xFFC2D398);
const kOtherLightColor = Color(0xFFf2feec);
const kOthersColor = Color(0xFFFFCCD1);
const kOthersColorText = Color(0xFFff99a3);
const kYellow = Color(0xFFEAE509);
const kGreenLight = Color(0xFF7DCE13);
const kGreenExtraLight = Color(0xffF4FFDF);
const kGreenMedium = Color(0xFF5BB318);
const kGreenDark = Color(0xFF2B7A0B);
const kDarkBlack = Color(0xFF191A19);
const kDarkGreenDark = Color(0xFF1E5128);
const kDarkGreenMedium = Color(0xFF4E9F3D);
const kDarkGreenLight = Color(0xFFD8E9A8);
const kScaffoldColor = Color(0xFFefefef);
const kBorderColor = Color(0xFFb6b6b6);
const kBorderColor2 = Color(0xff98999e);
const kBorderColor3 = Color(0xff5c5d65);
const kBorderColor4 = Color(0xffd6d9db);
const kTextPrimary = Color(0xFF33363F);
const kTextSecondary = Color(0xFF4A4E5B);
const kTextTertiary = Color(0xff6B6E6F);
const kSilverNight = Color(0xFFB0B5B9);
const kWhite = Color(0xFFFFFFFF);
const kBlack = Color(0xFF000000);
const kRed = Colors.red;
const kRedDark = Color(0xFFc5152a);
const kBlue = Color(0xFF87e1d7);
const kLightYellow = Color(0xFFfdf6c0);
const kDark = Color(0xFF29235c);

gradient1() {
  return LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)]);
}

gradient2() {
  return LinearGradient(colors: [Colors.purple, Colors.red]);
}

gradient3() {
  return LinearGradient(colors: [Colors.blue, Colors.green]);
}

gradient4() {
  return LinearGradient(colors: [Colors.blue, Colors.blue.shade900]);
}

gradient5() {
  return LinearGradient(colors: [Colors.orange, Colors.yellow]);
}

class EhumSwatch {
  static const MaterialColor greenSwatch = MaterialColor(
    0xffe55f48, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff2b7a0b), //10%
      100: Color(0xff276e0a), //20%
      200: Color(0xff226209), //30%
      300: Color(0xff1e5508), //40%
      400: Color(0xff1a4907), //50%
      500: Color(0xff163d06), //60%
      600: Color(0xff113104), //70%
      700: Color(0xff0d2503), //80%
      800: Color(0xff091802), //90%
      // 900: const Color(0xff000000), //100%
    },
  );
}
