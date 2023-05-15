import 'package:flutter/material.dart';
import 'package:uitemps/src/display/widgets/buttons/custom_button.dart';
import 'package:uitemps/src/display/widgets/image_picker/image_picker.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomButton(
            text: "pickImage",
            onPressed: () async {
              final image = await pickImage(context);
            },
          )
        ],
      ),
    );
  }
}
