import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_place.freezed.dart';
part 'custom_place.g.dart';

@freezed
class CustomPlace with _$CustomPlace {
  const factory CustomPlace({
    required String direction,
    required String placeId,
  }) = _CustomPlace;

  factory CustomPlace.fromJson(Map<String, dynamic> json) => _$CustomPlaceFromJson(json);
}
