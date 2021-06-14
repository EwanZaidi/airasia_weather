// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coord _$CoordFromJson(Map<String, dynamic> json) {
  return Coord()
    ..label = json['lat'] as num
    ..value = json['lon'] as num;
}

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lat': instance.label,
      'lon': instance.value,
    };
