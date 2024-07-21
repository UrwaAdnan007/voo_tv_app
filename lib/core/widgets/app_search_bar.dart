import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    required this.hinttext,
  });
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
        suffix: SvgPicture.asset('assets/icons/cancel.svg'),
        prefix: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: SvgPicture.asset('assets/icons/search.svg'),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
