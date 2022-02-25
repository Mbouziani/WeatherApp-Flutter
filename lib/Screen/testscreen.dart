import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Model/current.dart';
import 'package:weather_app/Model/weather.dart';
import 'package:weather_app/Provider/ProviderModel.dart';
import 'package:weather_app/Widget/AppBar_Widget.dart';
import 'package:weather_app/logique/Api/Weahter_Api.dart';

class testscreen extends StatefulWidget {
  const testscreen({Key? key}) : super(key: key);

  @override
  _testscreenState createState() => _testscreenState();
}

class _testscreenState extends State<testscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppBarWidget()),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          fetchdaily();
        },
        child: Text('Click Me'),
      )),
    );
  }
}
/* MaterialButton(
        onPressed: () {
          fetch();
        },
        child: Text('Click Me'),
      ) */
/* 
      FutureBuilder<List<Daily>>(
          future: fetchMe(),
          builder: (context, AsyncSnapshot snaphshot) {
            return ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Text(snaphshot.data[index].toString());
              },
            );
          },
        ), */