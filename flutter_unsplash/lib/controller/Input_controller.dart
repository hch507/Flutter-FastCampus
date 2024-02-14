import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_unsplash/data/retrofit/retrofit_client.dart';
import 'package:flutter_unsplash/model/vo_photo.dart';
import 'package:get/get.dart';

import '../data/service/service.dart';

class InputController extends GetxController{
  var photo =<Result>[].obs;
  NaverRestClient? client;
  InputController() {
    Dio dio = Dio();
    this.client = RestClient(dio);
  }

  void fetcchData(String searchTerm) async{
    // await ApiService.fetchData(path: 'search/photos', searchTerm: '$searchTerm', );
    final resp = await client?.getPhots(searchTerm, "x7eS2UmTg22vNWTxBH3FVGWL2oKo65ETcrsqT9KZa94");
    if (resp != null) {
      for (var result in resp.result) {
        photo.add(result);
        // print("ID: ${result.user.username}");
        // print("CreatedAt: ${result.createAt}");
        // print("Likes: ${result.like}");
        // print("Likes: ${result.urls.thumb}");
        // ... 필요한 만큼 추가
      }
    } else {
      print("Response is null");
    }
    print(photo);
  }
}
