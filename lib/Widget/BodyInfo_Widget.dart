import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Screen/Home_Screen.dart';
import 'package:weather_app/Widget/BottomInfo_widget.dart';
import 'package:weather_app/logique/Date_Method.dart';
import 'package:weather_app/logique/Images_Method.dart';

class BodyInfo extends StatefulWidget {
  BodyInfo({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyInfo> createState() => _BodyInfoState();
}

class _BodyInfoState extends State<BodyInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oujda',
                style: GoogleFonts.lato(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  GetCurrentDate(),
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("50°C",
                  style: GoogleFonts.lato(
                      fontSize: 110,
                      fontWeight: FontWeight.w200,
                      color: Colors.white)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  LottieBuilder.asset(
                    GetWeatherlottie(idweather, GetStateDay()),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Clody',
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              BottomInfo(),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ],
      ),
    );
  }
}
