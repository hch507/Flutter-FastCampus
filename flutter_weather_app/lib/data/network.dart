import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  final uri;
  Network(this.uri);

  Future<dynamic> getJsonData() async{
    final parseUri = Uri.parse(uri);
    http.Response response = await http.get(parseUri);
    if(response.statusCode==200){
      String jsonData = response.body;
      var parsingData = jsonDecode(jsonData);
      return parsingData;

    }else{
      print(response.statusCode);
    }
  }



}