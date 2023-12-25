import 'package:flutter/material.dart';

class WeatherFragment extends StatefulWidget {
  final parseWeatherData;
  const WeatherFragment({this.parseWeatherData,super.key});

  @override
  State<WeatherFragment> createState() => _WeatherFragmentState();
}

class _WeatherFragmentState extends State<WeatherFragment> {
  late String cityName;
  late double temp;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData){



    temp= weatherData['main']['temp'];
    cityName = weatherData['name'];
    print(temp);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$cityName",
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "$temp",
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
