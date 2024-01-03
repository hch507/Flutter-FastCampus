import 'dart:developer';

import 'package:flutter_unsplash/model/vo_photo.dart';
import 'package:get/get.dart';

import '../data/service.dart';

class InputController extends GetxController{
  var photo =<Photo>[].obs;

  void fetcchData(String searchTerm) async{
    await ApiService.fetchData(path: 'search/photos', searchTerm: '$searchTerm', );
  }
}
