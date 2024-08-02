import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/amount_chips.dart';
import 'package:voo_tv_app/core/widgets/app_bottom_sheet.dart';
import 'package:voo_tv_app/core/widgets/app_checkbox.dart';
import 'package:voo_tv_app/core/widgets/app_textfield.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';
import 'package:voo_tv_app/core/widgets/card_checkbox.dart';
import 'package:voo_tv_app/core/widgets/credit_card_widget.dart';
import 'package:voo_tv_app/core/widgets/payment_container.dart';

class OneTimePage extends StatelessWidget {
  const OneTimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your amount',
              style: GoogleFonts.poppins(
                color: AppColors.titleColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const AmountChips(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: AppTextField(
                hinttext: '\$3000.00',
                title: 'Enter Amount',
                textsuffix: 'USD',
              ),
            ),
            const AppCheckbox(
                checkboxText:
                    '\$5.00 is the minimum online donation. All donations are tax deductible.'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppTitle(text: 'Payment'),
                  const CreditCardWidget(),
                  const PaymentMethodContainer(),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CardCheckbox(),
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
          ],
        ),
      ),
    );
  }
}
