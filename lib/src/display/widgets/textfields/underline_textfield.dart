import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/constants/custom_colors.dart';

class CustomUnderlineTextField extends StatefulWidget {
  const CustomUnderlineTextField({
    Key? key,
    required this.controller,
    this.hint,
    this.lines,
    required this.textInputType,
  }) : super(key: key);

  final String? hint;
  final TextEditingController controller;
  final int? lines;
  final TextInputType textInputType;

  @override
  State<CustomUnderlineTextField> createState() =>
      _CustomUnderlineTextFieldState();
}

class _CustomUnderlineTextFieldState extends State<CustomUnderlineTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: widget.lines,
      keyboardType: TextInputType.multiline,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          color: kTextPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      cursorColor: kDark,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: widget.controller.clear,
          icon: const Icon(
            Icons.cancel,
            color: kDark,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: kBorderColor,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kDark, width: 1),
        ),
        hintText: widget.hint,
        hintStyle: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: kTextTertiary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        prefixStyle: const TextStyle(color: Colors.transparent),
      ),
    );
  }
}
