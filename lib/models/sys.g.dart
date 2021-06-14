// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sys _$SysFromJson(Map<String, dynamic> json) {
  return Sys()
    ..type = json['type'] as num
    ..id = json['id'] as num
    ..country = json['country'] as String
    ..sunrise = json['sunrise'] as num
    ..sunset = json['sunset'] as num;
}

Map<String, dynamic> _$SysToJson(Sys instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
