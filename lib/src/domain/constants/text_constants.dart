import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

Widget poppinsText(
        {required String? txt,
        required double? fontSize,
        Color color = kTextPrimary,
        FontWeight weight = FontWeight.w600,
        double? letterSpacing,
        int maxLines = 1,
        TextAlign? textAlign}) =>
    Text(
      txt!,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: weight,
            letterSpacing: letterSpacing),
      ),
    );
Widget poppinsMediumPrimary({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kTextPrimary,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            letterSpacing: letterSpacing),
      ),
    );

Widget poppinsMediumSecondary({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kTextSecondary,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            letterSpacing: letterSpacing),
      ),
    );
Widget poppinsMediumTertiary({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kTextTertiary,
            fontSize: fontSize,
            fontWeight: FontWeight.w500,
            letterSpacing: letterSpacing),
      ),
    );

Widget poppinsSemiBoldSecondary({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kTextSecondary,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            letterSpacing: letterSpacing),
      ),
    );
Widget poppinsSemiBoldPrimary({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kTextPrimary,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            letterSpacing: letterSpacing),
      ),
    );
Widget poppinsSemiBoldWhite({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kWhite,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            letterSpacing: letterSpacing),
      ),
    );
Widget poppinsSemiBoldTertiary({
  required String? txt,
  required double? fontSize,
  double? letterSpacing,
  int maxLines = 1,
}) =>
    Text(
      txt!,
      textAlign: TextAlign.left,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: kTextTertiary,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            letterSpacing: letterSpacing),
      ),
    );

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}
