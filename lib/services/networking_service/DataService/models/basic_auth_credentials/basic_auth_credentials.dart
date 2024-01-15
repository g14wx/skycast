import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_auth_credentials.freezed.dart';
part 'basic_auth_credentials.g.dart';

@freezed
class BasicAuthCredentials with _$BasicAuthCredentials {
  const factory BasicAuthCredentials({String? username, String? password, String? user}) = _BasicAuthCredentials;

  factory BasicAuthCredentials.fromJson(Map<String, dynamic> json) => _$BasicAuthCredentialsFromJson(json);
}
