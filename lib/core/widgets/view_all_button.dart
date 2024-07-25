import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor:
            const WidgetStatePropertyAll(AppColors.checkboxfilledColor),
        padding: const WidgetStatePropertyAll(EdgeInsets.zero),
        fixedSize: const WidgetStatePropertyAll(Size(61, 33)),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0))),
      ),
      child: Text('View all>',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: AppColors.titleColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          )),
    );
  }
}
