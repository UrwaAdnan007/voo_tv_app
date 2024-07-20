import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.maxlines,
    required this.hinttext,
    required this.title,
  });
  final String hinttext;
  final int? maxlines;
  final String title;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isVisiblePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: GoogleFonts.poppins(
            color: AppColors.textfieldTitleColor,
            fontSize: 16.0,
            height: 2,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextField(
          obscureText: isVisiblePassword,
          maxLines: widget.maxlines ?? 1,
          style: GoogleFonts.poppins(
            color: AppColors.textFieldTextColor,
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            hintText: widget.hinttext,
            hintStyle: GoogleFonts.poppins(
              color: AppColors.textFieldTextColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
            filled: true,
            fillColor: AppColors.textFieldColor,
            suffix: GestureDetector(
              onTap: () {
                setState(() {
                  isVisiblePassword = !isVisiblePassword;
                });
              },
              child: Text(
                'show',
                style: GoogleFonts.poppins(
                  color: AppColors.textFieldTextColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
        Text(
          'Make sure it’s 8 characters long',
          style: GoogleFonts.poppins(
            color: AppColors.smalltextColor,
            fontSize: 10.0,
            height: 2,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
