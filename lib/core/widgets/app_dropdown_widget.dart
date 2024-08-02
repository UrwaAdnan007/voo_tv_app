import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AppDropDownWidget extends StatefulWidget {
  const AppDropDownWidget({super.key});

  @override
  State<AppDropDownWidget> createState() => _AppDropDownWidgetState();
}

final List<String> items = [
  'Daily',
  'Weekly',
  'Monthly',
];
String dropdownvalue = 'Daily';

class _AppDropDownWidgetState extends State<AppDropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      isExpanded: true,
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldColor,
          border: UnderlineInputBorder(
            borderSide: const BorderSide(color: AppColors.textFieldColor),
            borderRadius: BorderRadius.circular(8),
          )),
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: GoogleFonts.poppins(
              color: AppColors.textFieldTextColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}
