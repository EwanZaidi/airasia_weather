// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main()
    ..temp = json['temp'] as num
    ..feelsLike = json['feels_like'] as num
    ..tempMin = json['temp_min'] as num
    ..tempMax = json['temp_max'] as num
    ..pressure = json['pressure'] as num
    ..humidity = json['humidity'] as num;
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
