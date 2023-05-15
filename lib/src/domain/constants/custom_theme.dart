import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.purple),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kGreenLight,
        ),
      ),
      primarySwatch: EhumSwatch.greenSwatch,
      primaryColor: kYellow,
      scaffoldBackgroundColor: Colors.white,
      // backgroundColor: Colors.red,

      fontFamily: 'poppins',
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: kGreenLight,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(useMaterial3: true,
        primaryColor: kDarkBlack,
        scaffoldBackgroundColor: kDarkGreenDark,
        fontFamily: 'poppins',
        textTheme: ThemeData.dark().textTheme,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kBlue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kBlue),
          ),
        ),
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: kDarkGreenMedium,
        ));
  }
}
