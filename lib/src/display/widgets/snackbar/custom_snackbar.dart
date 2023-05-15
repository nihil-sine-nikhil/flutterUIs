import 'package:flutter/material.dart';

import '../../../domain/constants/custom_colors.dart';
import '../../../domain/constants/text_constants.dart';

ScaffoldFeatureController CustomSnackBarMsg({
  required BuildContext context,
  required String text,
  required int time,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      width: double.infinity,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      duration: Duration(seconds: time),
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kDark,
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Icon(Icons.info, color: kWhite),
          poppinsText(
              txt: '   Note :  ',
              color: kWhite,
              fontSize: 15,
              weight: FontWeight.w700),
          Expanded(
            child: poppinsText(
                txt: text,
                fontSize: 14,
                color: kWhite,
                weight: FontWeight.w500,
                maxLines: 5),
          ),
        ]),
      ),
    ),
  );
}

ScaffoldFeatureController CustomErrorSnackBarMsg({
  required BuildContext context,
  required String text,
  required int time,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      width: double.infinity,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      duration: Duration(seconds: time),
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kRedDark,
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Icon(
            Icons.warning,
            color: kWhite,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: poppinsText(
                txt: text,
                fontSize: 14,
                color: kWhite,
                maxLines: 5,
                weight: FontWeight.w600),
          ),
        ]),
      ),
    ),
  );
}
