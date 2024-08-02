import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';
import 'package:voo_tv_app/core/widgets/app_title.dart';

@RoutePage()
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});
  final String aboutUsText =
      'Sit ac tortor ac facilisis convallis feugiat id. Et, tristique sagittis in arcu, nunc. Nam et amet diam sed eu in. Sapien quam fermentum enim, et facilisi habitasse est. Vitae elit viverra massa dapibus leo iaculis. Integer enim risus amet, mollis ornare vitae arcu. At sagittis, tempor lacus a malesuada dictumst sem augue. Sollicitudin ornare sed in etiam lorem suscipit commodo ligula. Feugiat risus netus at vestibulum in quis neque nibh. Nisl facilisi in lacus, lacus pellentesque leo elit ac. Sed tincidunt risus cursus pretium in aliquam. Egestas in lorem sed elementum pellentesque. Nulla tortor cras sed faucibus vel vel eget. Bibendum euismod ornare semper sed porta volutpat. Tincidunt vel, id integer aliquet scelerisque.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppTitle(text: 'About Us'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.titleColor,
          ),
          onPressed: () {
            context.maybePop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Text(
          aboutUsText,
          style: GoogleFonts.poppins(
            color: AppColors.tabsIconColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
