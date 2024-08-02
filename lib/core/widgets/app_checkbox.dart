import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({
    required this.checkboxText,
    this.color,
    super.key,
    this.bordercolor,
    this.fontsize,
    this.textColor,
    this.fontWeight,
  });
  final String checkboxText;
  final Color? color;
  final Color? bordercolor;
  final double? fontsize;
  final Color? textColor;
  final FontWeight? fontWeight;
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
          activeColor: widget.color ?? AppColors.tabsSelectedColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          value: isSelected,
          side: BorderSide(
              color: widget.bordercolor ?? AppColors.checkboxfilledColor,
              width: 1),
          onChanged: (value) {
            setState(() {
              isSelected = value;
            });
          },
        ),
        Expanded(
          flex: 8,
          child: Text(
            widget.checkboxText,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: GoogleFonts.poppins(
              color: widget.textColor ?? AppColors.smalltextColor,
              fontSize: widget.fontsize ?? 10,
              fontWeight: widget.fontWeight ?? FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
