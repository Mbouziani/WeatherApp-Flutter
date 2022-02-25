// ignore_for_file: avoid_print, unused_field

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Model/current.dart';
import 'package:weather_app/Model/daily.dart';
import 'package:weather_app/Model/weather.dart';
import 'package:weather_app/Widget/AppBar_Widget.dart';
import 'package:weather_app/Widget/BodyInfo_Widget.dart';
import 'package:weather_app/logique/Api/Weahter_Api.dart';
import 'package:weather_app/logique/CalculCelsius.dart';
import 'package:weather_app/logique/Date_Method.dart';
import 'package:weather_app/logique/Images_Method.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindexe = 0;
  List<Daily>? _daily;
  Weather? _weather;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          title: AppBarWidget(),
        ),
        body: FutureBuilder<List<Daily>>(
            future: getDaily(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                _daily = snapshot.data!;
                _weather = _daily![currentindexe].weather![0];
                return Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(GetBackgroundPicture(
                                _weather!.id!, GetStateDay())),
                            fit: BoxFit.cover),
                      ),
                    ),
                    LottieBuilder.asset(
                      GetBackgroundAnimation(_weather!.id!, GetStateDay()),
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
                              snapshot.data!.length,
                              (index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 150),
                                    height: 6,
                                    width: index == currentindexe ? 15 : 8,
                                    decoration: BoxDecoration(
                                        color: index == currentindexe
                                            ? Colors.white.withOpacity(0.9)
                                            : Colors.white.withOpacity(0.5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: PageView.builder(
                            itemCount: snapshot.data!.length,
                            onPageChanged: (index) {
                              setState(() {
                                currentindexe = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              return BodyInfo(
                                id: _weather!.id!,
                                main: _weather!.main!,
                                temp: GetCelciusMain(
                                    _daily![currentindexe].temp!.day!),
                                humidity: _daily![currentindexe].humidity!,
                                pop: GetOnlyNum(_daily![currentindexe].pop!),
                                windSpee: GetOnlyNum(
                                    _daily![currentindexe].windSpeed!),
                              );
                            },
                          ),
                        )
                      ],
                    )
                  ],
                );
              }
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              GetBackgroundPicture(200, GetStateDay())),
                          fit: BoxFit.cover),
                    ),
                  ),
                  LottieBuilder.asset(
                    GetBackgroundAnimation(302, GetStateDay()),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.black38),
                  ),
                  Center(
                      child: CircularProgressIndicator(
                          color: Colors.white, strokeWidth: 2)),
                ],
              );
            }));
  }
}
