import 'package:freezed_annotation/freezed_annotation.dart';
part 'place_from_api.g.dart';
part 'place_from_api.freezed.dart';

@freezed
class PlaceFromApi with _$PlaceFromApi {
  const factory PlaceFromApi({required String description, required String place_id}) = _PlaceFromApi;
  factory PlaceFromApi.fromJson(Map<String, dynamic> json) => _$PlaceFromApiFromJson(json);
}
