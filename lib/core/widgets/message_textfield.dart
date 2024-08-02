import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class MessageTextField extends StatelessWidget {
  const MessageTextField({
    super.key,
    required this.hinttext,
  });
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 1,
      maxLines: 10,
      style: GoogleFonts.poppins(
        color: AppColors.textFieldTextColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: GoogleFonts.poppins(
          color: AppColors.textFieldTextColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: AppColors.textFieldColor,
        suffix: const CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.tabsSelectedColor,
          child: Icon(
            Icons.favorite_rounded,
            color: AppColors.whiteColor,
            size: 16,
          ),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
