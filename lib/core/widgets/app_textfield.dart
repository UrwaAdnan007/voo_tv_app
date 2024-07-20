import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.childsuffix,
    this.maxlines,
    required this.hinttext,
    required this.title,
  });
  final String hinttext;
  final Widget? childsuffix;
  final int? maxlines;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: AppColors.textfieldTitleColor,
            fontSize: 16.0,
            height: 2,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextField(
          maxLines: maxlines ?? 1,
          style: GoogleFonts.poppins(
            color: AppColors.textFieldTextColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: GoogleFonts.poppins(
              color: AppColors.textFieldTextColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
            filled: true,
            fillColor: AppColors.textFieldColor,
            suffix: childsuffix,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ],
    );
  }
}
