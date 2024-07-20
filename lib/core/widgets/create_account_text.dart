import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText(
      {super.key,
      required this.title,
      required this.onTap,
      required this.text});
  final String title;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: AppColors.smalltextColor,
            fontSize: 14.0,
            height: 4,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: AppColors.smalltextColor,
              fontSize: 14.0,
              height: 4,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
