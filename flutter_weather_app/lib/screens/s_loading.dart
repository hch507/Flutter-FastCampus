

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/data/my_location.dart';
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
    fetchData();
  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();

    await myLocation.getCurrentLocation();
    latitude2= myLocation.latitude;
    longittude2= myLocation.longitude;

    print(latitude2);
    print(longittude2);
  }
  void fetchData() async{
    Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1');
    await network.getJsonData();
    


  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed:null,
        child: Text("get my location"),
        
      ),
    );
  }
}
