import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton(
      {super.key,
      required this.title,
      this.heightx,
      this.widthx,
      this.elevation,
      this.onTap});
  final String title;
  final VoidCallback? onTap;
  final double? widthx;
  final double? heightx;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.sizeOf(context).height;
    double buttonWidth = MediaQuery.sizeOf(context).width;
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.buttonColor),
        fixedSize: WidgetStatePropertyAll(
            Size(widthx ?? buttonWidth, heightx ?? buttonHeight * 0.07)),
        minimumSize: WidgetStatePropertyAll(
            Size(widthx ?? buttonWidth, heightx ?? buttonHeight * 0.07)),
        maximumSize: WidgetStatePropertyAll(
            Size(widthx ?? buttonWidth, heightx ?? buttonHeight * 0.07)),
        elevation: WidgetStatePropertyAll(elevation ?? 4),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
      ),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: AppColors.whiteColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
    ;
  }
}
