import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:voo_tv_app/core/constants/app_colors.dart';

class PaymentMethodContainer extends StatefulWidget {
  const PaymentMethodContainer({
    super.key,
  });

  @override
  State<PaymentMethodContainer> createState() => _PaymentMethodContainerState();
}

int _selectedValue = 1;

class _PaymentMethodContainerState extends State<PaymentMethodContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RadioListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Bank Transfer',
                  style: GoogleFonts.poppins(
                    color: AppColors.textFieldTextColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.only(right: 16),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 1 is selected
                });
              },
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: AppColors.tabsSelectedColor,
              tileColor: AppColors.textFieldColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
          const SizedBox(
            height: 10,
          ),
          RadioListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'PayPal',
                  style: GoogleFonts.poppins(
                    color: AppColors.textFieldTextColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.only(right: 16),
              value: 2,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 1 is selected
                });
              },
              activeColor: AppColors.tabsSelectedColor,
              tileColor: AppColors.textFieldColor,
              controlAffinity: ListTileControlAffinity.trailing,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )),
        ],
      ),
    );
  }
}
// Container(
//       height: widget.heightx ?? containerHeight * 0.1,
//       width: widget.widthx ?? containerWidth,
//       decoration: BoxDecoration(
//         color: AppColors.textFieldColor,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: RadioListTile(
//         title: Text(
//           widget.title,
//           style: GoogleFonts.poppins(
//             color: AppColors.textFieldTextColor,
//             fontSize: 16.0,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         contentPadding: EdgeInsets.only(right: 16),
//         value: widget.value,
//         groupValue: widget.value,
//         onChanged: widget.onChanged,
//       ),
//     );
