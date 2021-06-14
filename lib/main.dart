import 'dart:async';

import 'package:airasia_weather/app_component.dart';
import 'package:airasia_weather/home.dart';
import 'package:airasia_weather/repository/weather_repository.dart';
import 'package:flutter/material.dart';

Future<void> _reportError(dynamic error, dynamic stackTrace) async {
  return;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final WeatherRepository weatherRepository = WeatherRepository();

  await runZoned<Future<Null>>(() async {
    runApp(
      AppComponent(
        weatherRepository,
      ),
    );
  }, onError: (dynamic error, StackTrace stackTrace) async {
    await _reportError(error, stackTrace);
  });
}
