import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voo_tv_app/config/theme/app_colors.dart';

@RoutePage()
class SplashSecondPage extends StatelessWidget {
  const SplashSecondPage({super.key});
  final String bgImg = 'assets/images/splash_second_bg.png';
  final String blurBG = 'assets/images/gradient_bg.svg';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: AppColor.bgColor,
          image: DecorationImage(
            image: AssetImage(bgImg),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: SvgPicture.asset(
                blurBG,
                width: width,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
