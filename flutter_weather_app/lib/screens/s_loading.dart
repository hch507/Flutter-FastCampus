import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/my_location.dart';
import 'package:flutter_weather_app/main.dart';
import 'package:flutter_weather_app/screens/s_weather.dart';
import 'package:http/http.dart' as http;

import '../data/network.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late double latitude2;
  late double longittude2;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();

    await myLocation.getCurrentLocation();
    latitude2 = myLocation.latitude;
    longittude2 = myLocation.longitude;

    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?lat=${latitude2}&lon=${longittude2}&appid=${apiKey}&units=metric');
    var weatherData = await network.getJsonData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return WeatherFragment(parseWeatherData: weatherData,);
        },
      ),
    );
  }

  // void fetchData() async{
  //   Network network = Network('https://api.openweathermap.org/data/2.5/weather?lat=${latitude2}&lon=${longittude2}&appid=${apiKey}');
  //   await network.getJsonData();
  //
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: null,
        child: Text("get my location"),
      ),
    );
  }
}
