// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) => _$AuthUserImpl(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      uid: json['uid'] as String,
      profilePicture: json['profilePicture'] as String?,
      docId: json['docId'] as String?,
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) => <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'uid': instance.uid,
      'profilePicture': instance.profilePicture,
      'docId': instance.docId,
    };
