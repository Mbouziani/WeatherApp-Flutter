import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomInfo extends StatelessWidget {
  const BottomInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Wind',
                style: GoogleFonts.lato(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                '8',
                style: GoogleFonts.lato(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                'km/h',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Rain',
                style: GoogleFonts.lato(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                '7',
                style: GoogleFonts.lato(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                '%',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Humidity',
                style: GoogleFonts.lato(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                '82',
                style: GoogleFonts.lato(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                '%',
                style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}