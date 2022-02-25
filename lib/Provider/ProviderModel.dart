// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/cupertino.dart';
import 'package:weather_app/Model/current.dart';
import 'package:weather_app/Model/weather.dart';
import 'package:weather_app/logique/Api/Weahter_Api.dart';

class ProviderModel extends ChangeNotifier {
  int _id = 800;

  int get id => _id;

  set id(int id) {
    _id = id;
  }

//-------------------------
  String _main = 'Clear';

  String get main => _main;

  set main(String main) {
    _main = main;
  }

//-------------------------
  double _temp = 290;

  double get temp => _temp;

  set temp(double temp) {
    _temp = temp;
  }
}
