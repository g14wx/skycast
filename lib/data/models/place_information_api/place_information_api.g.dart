// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_information_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceInformationApiImpl _$$PlaceInformationApiImplFromJson(Map<String, dynamic> json) => _$PlaceInformationApiImpl(
      result: PlaceInformationResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceInformationApiImplToJson(_$PlaceInformationApiImpl instance) => <String, dynamic>{
      'result': instance.result,
    };

_$PlaceInformationResultImpl _$$PlaceInformationResultImplFromJson(Map<String, dynamic> json) =>
    _$PlaceInformationResultImpl(
      geometry: PlaceInformationResultGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceInformationResultImplToJson(_$PlaceInformationResultImpl instance) => <String, dynamic>{
      'geometry': instance.geometry,
    };

_$PlaceInformationResultGeometryImpl _$$PlaceInformationResultGeometryImplFromJson(Map<String, dynamic> json) =>
    _$PlaceInformationResultGeometryImpl(
      location: PlaceInformationResultGeometryLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceInformationResultGeometryImplToJson(_$PlaceInformationResultGeometryImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$PlaceInformationResultGeometryLocationImpl _$$PlaceInformationResultGeometryLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceInformationResultGeometryLocationImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$PlaceInformationResultGeometryLocationImplToJson(
        _$PlaceInformationResultGeometryLocationImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
