import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class AmountChips extends StatefulWidget {
  const AmountChips({super.key});

  @override
  State<AmountChips> createState() => _AmountChipsState();
}

class _AmountChipsState extends State<AmountChips> {
  final List<String> _Amounts = [
    '\$50',
    '\$100',
    '\$250',
    '\$500',
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      height: height * 0.05,
      child: ChipList(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 3),
        listOfChipNames: _Amounts,
        borderRadiiList: const [8.00],
        showCheckmark: false,
        style: GoogleFonts.poppins(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        activeBgColorList: const [AppColors.tabsSelectedColor],
        inactiveBgColorList: const [AppColors.pinkcheckboxColor],
        activeTextColorList: const [Colors.white],
        inactiveTextColorList: const [AppColors.tabsSelectedColor],
        listOfChipIndicesCurrentlySelected: const [0],
        activeBorderColorList: const [
          AppColors.tabsSelectedColor,
        ],
        inactiveBorderColorList: const [AppColors.tabsSelectedColor],
      ),
    );
  }
}
