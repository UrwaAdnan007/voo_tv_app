import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voo_tv_app/core/constants/app_colors.dart';

class Comments extends StatelessWidget {
  const Comments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        maxRadius: 32,
        backgroundColor: Colors.amber,
      ),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Text(
              'Ajayi Ogbomosho',
              style: GoogleFonts.poppins(
                color: AppColors.titleColor,
                fontSize: 10.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: AppColors.checkboxfilledColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Text(
              '34 min',
              style: GoogleFonts.poppins(
                color: AppColors.textColor,
                fontSize: 8.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      subtitle: Text(
        'Pulvinar aliquam maecenas fermentum amet eget pellentesque sagittis semper. Aliquet mauris diam iaculis vitae amet nunc. Quis nunc massa amet.',
        style: GoogleFonts.poppins(
          color: AppColors.checkboxfilledColor,
          fontSize: 8.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
