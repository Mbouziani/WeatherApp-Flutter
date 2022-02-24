// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Widget/AppBar_Widget.dart';
import 'package:weather_app/Widget/BodyInfo_Widget.dart';
import 'package:weather_app/Widget/BottomInfo_widget.dart';
import 'package:weather_app/logique/Date_Method.dart';
import 'package:weather_app/logique/Images_Method.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindexe = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        title: AppBarWidget(),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      GetBackgroundPicture(idweather, GetStateDay())),
                  fit: BoxFit.cover),
            ),
          ),
          LottieBuilder.asset(
            GetBackgroundAnimation(idweather, GetStateDay()),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Column(
            children: [
              SizedBox(height: 110),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: List.generate(
                    5,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 150),
                          height: 6,
                          width: index == currentindexe ? 15 : 8,
                          decoration: BoxDecoration(
                              color: index == currentindexe
                                  ? Colors.white.withOpacity(0.9)
                                  : Colors.white.withOpacity(0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: PageView.builder(
                  itemCount: 5,
                  onPageChanged: (index) {
                    setState(() {
                      currentindexe = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return BodyInfo();
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

int idweather = 600;
