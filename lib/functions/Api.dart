import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class Api {
  static final String apiPrefix = "https://api.openweathermap.org/data/2.5/weather?";
  static final String apiKey = "3d154b49500d9ad6d3c27b3930335792";

  // static Future<dynamic> jsonRequest(String url, Map jsonMap, int type) async {
  //   HttpClient httpClient = new HttpClient();
  //   HttpClientRequest request;
  //   switch (type) {
  //     case 1:
  //       request = await httpClient.postUrl(Uri.parse(url));
  //       break;
  //     case 2:
  //       request = await httpClient.putUrl(Uri.parse(url));
  //       break;
  //   }
  //   request.headers.set('content-type', 'application/json');
  //   request.add(utf8.encode(json.encode(jsonMap)));
  //   HttpClientResponse response = await request.close();
  //   if (response.statusCode != 200) {}
  //   //return response;
  //   String reply = await response.transform(utf8.decoder).join();
  //   httpClient.close();
  //   return reply;
  // }

  static Future<dynamic> getCurrentWeatherByCity(String city) async {
    final response = await http.get(
      apiPrefix + "q=$city&appid=$apiKey&units=metric",
    );
    return json.decode(response.body);
  }

  static Future<dynamic> getWeatherByLocation(String lat, String lng) async {
    final response = await http.get(
      "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lng&appid=$apiKey&units=metric",
    );
    return json.decode(response.body);
  }
}
