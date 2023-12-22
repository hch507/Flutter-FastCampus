

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {

    super.initState();
    getLocation();
  }

  void getLocation() async {
    try{
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      print('현재 위치: ${position.latitude}, ${position.longitude}');
    }catch(e){
      print("인터넷 연결에 문제가 생겼습니다.");
    }

  void fetchData(){
      Response reponse = get(url)
  }
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
