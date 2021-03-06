import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Screen/Home_Screen.dart';
import 'package:weather_app/Widget/BottomInfo_widget.dart';
import 'package:weather_app/logique/Date_Method.dart';
import 'package:weather_app/logique/Images_Method.dart';

class BodyInfo extends StatelessWidget {
  const BodyInfo({
    Key? key,
    required this.id,
    required this.main,
    required this.temp,
    required this.humidity,
    required this.windSpee,
    required this.pop,
  }) : super(key: key);
  final int id;
  final String main;
  final String temp;
  final int humidity;
  final String windSpee;
  final String pop;

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
              Text("$temp°C",
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
                    GetWeatherlottie(id, GetStateDay()),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    main,
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
              BottomInfo(humidity: humidity, pop: pop, windSpee: windSpee),
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
