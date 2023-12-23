import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  final uri;
  Network(this.uri);

  Future<void> getJsonData() async{
    final parseUri = Uri.parse(uri);
    http.Response response = await http.get(parseUri);
    if(response.statusCode==200){
      String jsonData = response.body;
      var myJson = jsonDecode(jsonData)['weather'][0]['description'];
      print(myJson);

      var wind = jsonDecode(jsonData)['wind']['speed'];

      var id = jsonDecode(jsonData)['id'];

    }else{
      print(response.statusCode);
    }
  }



}