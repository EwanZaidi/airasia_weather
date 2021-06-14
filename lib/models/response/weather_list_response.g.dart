// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherListResponse _$WeatherListResponseFromJson(Map<String, dynamic> json) {
  return WeatherListResponse()
    ..cod = json['cod'] as String
    ..message = json['message'] as num
    ..cnt = json['cnt'] as num
    ..list = (json['list'] as List)
        ?.map((e) => e == null
            ? null
            : WeatherResponse.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$WeatherListResponseToJson(
        WeatherListResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list,
    };
