import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/config/routes/routes.gr.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 4),
      () {
        context.pushRoute(const SplashSecondRoute());
      },
    );
  }

  final String backgroundImg = 'assets/images/bg_img.png';

  final String logo = 'assets/images/logo.svg';

  final String text =
      '...striving towards the rebirth of Apostolic Christianity';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          image: DecorationImage(
            image: AssetImage(backgroundImg),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                logo,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: AppColors.textColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 14.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
