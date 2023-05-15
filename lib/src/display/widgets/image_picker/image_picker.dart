import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../domain/constants/asset_constants.dart';
import '../../../domain/constants/custom_colors.dart';
import '../../../domain/constants/text_constants.dart';
import '../bottomsheet/custom_bottomsheet.dart';
import '../snackbar/custom_snackbar.dart';

Future<File?> pickImage(BuildContext context) async {
  ImagePicker imagePicker = ImagePicker();

  File? image;
  await TitleBottomSheet(
      context: context,
      title: "Pick an image",
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () async {
                try {
                  final pickedImage = await imagePicker.pickImage(
                      source: ImageSource.camera, imageQuality: 50);
                  if (pickedImage != null) {
                    image = File(pickedImage.path);
                  }
                } catch (e) {
                  CustomSnackBarMsg(
                      context: context, text: e.toString(), time: 3);
                }
                Navigator.pop(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.camera,
                    width: 70,
                    height: 70,
                  ),
                  poppinsText(
                      txt: 'Camera',
                      fontSize: 16,
                      weight: FontWeight.w700,
                      color: kTextPrimary,
                      textAlign: TextAlign.start)
                ],
              ),
            ),
            SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () async {
                try {
                  final pickedImage =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (pickedImage != null) {
                    image = File(pickedImage.path);
                  }
                } catch (e) {
                  CustomSnackBarMsg(
                      context: context, text: e.toString(), time: 3);
                }
                Navigator.pop(context);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.gallery,
                    width: 70,
                    height: 70,
                  ),
                  poppinsText(
                      txt: 'Gallery',
                      fontSize: 16,
                      weight: FontWeight.w700,
                      color: kTextPrimary,
                      textAlign: TextAlign.start)
                ],
              ),
            ),
          ],
        ),
      ));
  return image;
}
