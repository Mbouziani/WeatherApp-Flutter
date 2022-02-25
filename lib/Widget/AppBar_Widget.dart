import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/logique/Api/Weahter_Api.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '  . Weather .',
          style: GoogleFonts.lato(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/svg/menuright.svg',
            color: Colors.white,
            height: 30,
            width: 30,
          ),
        ),
      ],
    );
  }
}
