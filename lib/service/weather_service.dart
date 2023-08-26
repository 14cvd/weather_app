import 'package:dio/dio.dart';
import 'package:weather_app/helper/const_data.dart';
import 'package:weather_app/model/weather_model.dart';

sealed class WeatherService {
  static Future<List<WeatherModel>> fetchWeatherItem() async {
    var response = await Dio().get(ConstData.url);
    if (response.statusCode == 200) {
      var data = response.data;
      if (data is List) {
        return data.map((e) => WeatherModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
