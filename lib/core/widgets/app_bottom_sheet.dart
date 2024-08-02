import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/bottom_sheet_button.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet(
      {super.key,
      required this.buttontitle,
      required this.title,
      this.heightx,
      this.widthx,
      this.elevation,
      required this.subtitle,
      required this.sheetButtonTitle,
      this.onTap});
  final String title;
  final VoidCallback? onTap;

  final String subtitle;
  final String buttontitle;
  final double? heightx;
  final String sheetButtonTitle;
  final double? elevation;
  final double? widthx;
  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.sizeOf(context).height;
    double buttonWidth = MediaQuery.sizeOf(context).width;
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
              height: heightx,
              width: widthx,
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.check_circle_outline,
                        color: AppColors.tickColor,
                        size: 118,
                      ),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: AppColors.titleColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        subtitle,
                        maxLines: 4,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: AppColors.textfieldTitleColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: BottomSheetButton(
                            title: sheetButtonTitle, onTap: onTap),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
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
        buttontitle,
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
  }
}
