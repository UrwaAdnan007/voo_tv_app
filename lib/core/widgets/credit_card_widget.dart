import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key, this.widthx, this.heightx});
  final double? widthx;
  final double? heightx;
  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.sizeOf(context).height;
    double containerWidth = MediaQuery.sizeOf(context).width;
    return Container(
      height: heightx ?? containerHeight * 0.25,
      width: widthx ?? containerWidth,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
          color: AppColors.creditcardContainerfilledColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.creditCardbordercolor, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Credit Card',
            style: GoogleFonts.poppins(
              color: AppColors.textfieldTitleColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextField(
            style: GoogleFonts.poppins(
              color: AppColors.textFieldTextColor,
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              fillColor: AppColors.whiteColor,
              filled: true,
              hintText: 'Credit Card Number',
              hintStyle: GoogleFonts.poppins(
                color: AppColors.textFieldTextColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1, color: AppColors.textFieldTextColor),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: TextField(
                    style: GoogleFonts.poppins(
                      color: AppColors.textFieldTextColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      fillColor: AppColors.whiteColor,
                      filled: true,
                      hintText: 'Exp Date',
                      hintStyle: GoogleFonts.poppins(
                        color: AppColors.textFieldTextColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.textFieldTextColor),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextField(
                    style: GoogleFonts.poppins(
                      color: AppColors.textFieldTextColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      fillColor: AppColors.whiteColor,
                      filled: true,
                      hintText: 'CVV',
                      hintStyle: GoogleFonts.poppins(
                        color: AppColors.textFieldTextColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1, color: AppColors.textFieldTextColor),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
