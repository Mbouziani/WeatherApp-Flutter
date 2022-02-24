import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/svg/search.svg',
          color: Colors.white,
          height: 27,
          width: 30,
        ),
        SvgPicture.asset(
          'assets/svg/menuright.svg',
          color: Colors.white,
          height: 30,
          width: 30,
        ),
      ],
    );
  }
}
