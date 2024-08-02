import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_checkbox.dart';

class CardCheckbox extends StatelessWidget {
  const CardCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.pinkcheckboxColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: AppColors.pinkcheckboxBorderColor, width: 1)),
          child: const AppCheckbox(
            checkboxText: 'Cover processing fees of \$12.92',
            textColor: AppColors.titleColor,
            fontsize: 14.0,
            bordercolor: AppColors.smalltextColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: width,
          height: height * 0.07,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.blueCheckboxColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppCheckbox(
                  checkboxText: 'Save this card',
                  textColor: AppColors.titleColor,
                  fontsize: 14.0,
                  fontWeight: FontWeight.w700,
                  bordercolor: AppColors.smalltextColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Text(
                    'For faster payment next time',
                    style: GoogleFonts.poppins(
                      color: AppColors.smalltextColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
