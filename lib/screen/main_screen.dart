import 'package:flutter/material.dart';
import 'package:weather_app/service/weather_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List item = [];

  @override
  void initState() {
    super.initState();
    items();
  }

  void items() async {
    item = await WeatherService.fetchWeatherItem();
  }

  @override
  Widget build(BuildContext context) {
    print(WeatherService.fetchWeatherItem());
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: WeatherService.fetchWeatherItem(),
        builder: (context, snapshot) {
          return Text(snapshot.data!.length.toString());
        },
      ),
    );
  }
}
