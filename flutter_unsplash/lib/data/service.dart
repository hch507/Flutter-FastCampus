
import 'package:flutter/material.dart';
import 'package:flutter_unsplash/model/vo_photo.dart';
import 'package:http/http.dart' as http;
class ApiService {
  static var client = http.Client();
  static String baseUrl = "https://api.unsplash.com";
  static Future<dynamic> fetchData({required String path, required String searchTerm}) async{
    final response = await client.get(Uri.parse('$baseUrl/$path?query=$searchTerm&client_id=x7eS2UmTg22vNWTxBH3FVGWL2oKo65ETcrsqT9KZa94'));
    if(response.statusCode==200){
      print(response.body);

    }

  }
}