import 'package:flutter/material.dart';

import '../../../domain/constants/asset_constants.dart';
import '../../../domain/constants/custom_colors.dart';
import '../../../domain/constants/text_constants.dart';
import '../dash_seperator/dash_seperator.dart';

Future<dynamic> TitleBottomSheet(
    {required BuildContext context,
    bool? enableDrag,
    required String title,
    bool? isScrollControlled,
    required Widget widget}) {
  return showModalBottomSheet(
    enableDrag: enableDrag ?? true,
    isScrollControlled: isScrollControlled ?? true,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
    context: context,
    builder: (context) => SingleChildScrollView(
      child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.images.info, height: 30),
                    const SizedBox(
                      width: 15,
                    ),
                    poppinsText(
                      txt: title,
                      fontSize: 16,
                      weight: FontWeight.w600,
                      color: kTextPrimary,
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.cancel,
                          color: kRedDark,
                          size: 30,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const MySeparator(
                  color: kTextPrimary,
                ),
                const SizedBox(
                  height: 15,
                ),
                widget
              ],
            ),
          )),
    ),
  );
}
