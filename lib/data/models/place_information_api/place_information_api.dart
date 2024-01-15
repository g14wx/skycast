import 'package:freezed_annotation/freezed_annotation.dart';
part 'place_information_api.freezed.dart';
part 'place_information_api.g.dart';

@freezed
class PlaceInformationApi with _$PlaceInformationApi {
  const factory PlaceInformationApi({
    required PlaceInformationResult result,
  }) = _PlaceInformationApi;
  factory PlaceInformationApi.fromJson(Map<String, dynamic> json) => _$PlaceInformationApiFromJson(json);
}

@freezed
class PlaceInformationResult with _$PlaceInformationResult {
  const factory PlaceInformationResult({
    required PlaceInformationResultGeometry geometry,
  }) = _PlaceInformationResult;
  factory PlaceInformationResult.fromJson(Map<String, dynamic> json) => _$PlaceInformationResultFromJson(json);
}

@freezed
class PlaceInformationResultGeometry with _$PlaceInformationResultGeometry {
  const factory PlaceInformationResultGeometry({required PlaceInformationResultGeometryLocation location}) =
      _PlaceInformationResultGeometry;

  factory PlaceInformationResultGeometry.fromJson(Map<String, dynamic> json) =>
      _$PlaceInformationResultGeometryFromJson(json);
}

@freezed
class PlaceInformationResultGeometryLocation with _$PlaceInformationResultGeometryLocation {
  const factory PlaceInformationResultGeometryLocation({required double lat, required double lng}) =
      _PlaceInformationResultGeometryLocation;

  factory PlaceInformationResultGeometryLocation.fromJson(Map<String, dynamic> json) =>
      _$PlaceInformationResultGeometryLocationFromJson(json);
}
