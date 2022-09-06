import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      //print(response.body);
      String data = response.body;
      return jsonDecode(data);
      //var decodedData = jsonDecode(data);
      // var longitude = jsonDecode(data)['coord']['lon'];
      // print(longitude);
      // var weatherDescription = jsonDecode(data)['weather'][0]['description'];
      // print(weatherDescription);
      // double temperature = decodedData['main']['temp'];
      // print(temperature);
      // int condition = decodedData['weather'][0]['id'];
      // print(condition);
      // String name = decodedData['name'];
      // print(name);
    } else {
      print(response.statusCode);
      return (response.statusCode);
    }
  }
}
