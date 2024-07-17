import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.child,
      required this.height,
      required this.width,
      required this.onTap,
      required this.color});
  final VoidCallback onTap;
  final Widget child;
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: child,
      ),
    );
  }
}
