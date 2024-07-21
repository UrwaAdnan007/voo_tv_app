import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({
    required this.checkboxText,
    super.key,
  });
  final String checkboxText;
  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool? isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor:
              const WidgetStatePropertyAll(AppColors.checkboxfilledColor),
          value: isSelected,
          side:
              const BorderSide(color: AppColors.checkboxfilledColor, width: 1),
          onChanged: (value) {
            setState(() {
              isSelected = value;
            });
          },
        ),
        Text(
          widget.checkboxText,
          style: GoogleFonts.poppins(
            color: AppColors.smalltextColor,
            fontSize: 10.0,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
