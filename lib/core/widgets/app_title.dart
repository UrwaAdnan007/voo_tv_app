import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: AppColors.titleColor,
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
