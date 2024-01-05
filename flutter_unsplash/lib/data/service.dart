
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_unsplash/model/vo_photo.dart';
import 'package:http/http.dart' as http;
class ApiService {
  static var client = http.Client();
  static String baseUrl = "https://api.unsplash.com";
  static Future<Result?> fetchData({required String path, required String searchTerm}) async{
    final response = await client.get(Uri.parse('$baseUrl/$path?query=$searchTerm&client_id=x7eS2UmTg22vNWTxBH3FVGWL2oKo65ETcrsqT9KZa94'));
    if(response.statusCode==200){
      // print(response.body);
      // var responseBody = jsonDecode(response.body);
      // List<Result> photo =responseBody["results"] as List<Result>;
      // print(photo);
      Map<String, dynamic> jsonMap = jsonDecode(response.body);
      //
      // // "results" 배열 가져오기
      // List<dynamic> results = jsonMap['results'];
      //
      // // "id"와 "created_at" 값 출력
      // for (var result in results) {
      //   String id = result['id'];
      //   String createdAt = result['created_at'];
      //
      //   print('ID: $id, Created At: $createdAt');
      Result result = Result.fromJson(jsonMap);
      print(result.createAt);
    }
  }
}