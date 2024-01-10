

import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_client.g.dart';

@RestApi(baseUrl: "https://api.unsplash.com")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('search/photos')
  Future<List<int>> getPhots(
        @Query("query") String query,
        @Query("client_id") String clientId,
      );
}