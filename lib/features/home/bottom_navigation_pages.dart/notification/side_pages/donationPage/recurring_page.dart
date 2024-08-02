import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/amount_chips.dart';
import 'package:voo_tv_app/core/widgets/app_bottom_sheet.dart';
import 'package:voo_tv_app/core/widgets/app_checkbox.dart';
import 'package:voo_tv_app/core/widgets/app_dropdown_widget.dart';
import 'package:voo_tv_app/core/widgets/app_textfield.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/card_checkbox.dart';
import 'package:voo_tv_app/core/widgets/credit_card_widget.dart';
import 'package:voo_tv_app/core/widgets/payment_container.dart';

class RecurringPage extends StatelessWidget {
  const RecurringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You can choose a recurring donation to be perpetual, or end after a specific number of payments.',
                  maxLines: 3,
                  style: GoogleFonts.poppins(
                    color: AppColors.titleColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    'Frequency',
                    style: GoogleFonts.poppins(
                      color: AppColors.textColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: AppDropDownWidget()),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: AppTextField(
                    hinttext: '1/8/2024',
                    title: 'First Payment Date',
                    childsuffix: Icon(Icons.calendar_month),
                  ),
                ),
                const AppCheckbox(checkboxText: 'Perpetual?'),
              ],
            ),
            const Column(
              children: [
                AmountChips(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: AppTextField(
                    hinttext: '\$3000.00',
                    title: 'Enter Amount',
                    textsuffix: 'USD',
                  ),
                ),
                AppCheckbox(
                    checkboxText:
                        '\$5.00 is the minimum online donation. All donations are tax deductible.'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppTitle(text: 'Payment'),
                      CreditCardWidget(),
                      PaymentMethodContainer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: CardCheckbox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                AppTitle(text: 'Personal Information'),
                AppTextField(
                    hinttext: 'example@example.com', title: 'Email address'),
                AppTextField(
                    hinttext: '+234 810 123 4567', title: 'Enter Phone Number'),
                AppTextField(hinttext: 'City name', title: 'City'),
                AppTextField(hinttext: 'Nigeria', title: 'Choose Country'),
                AppCheckbox(
                    checkboxText: 'I would like to get a text notification')
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: AppBottomSheet(
                title: 'Your Giving was Received',
                buttontitle: 'Donate \$250 Now',
                subtitle:
                    'Thank you for partnering with us in reaching with world with the gospel',
                sheetButtonTitle: 'Well received, thanks.',
                onTap: () {
                  context.maybePop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
