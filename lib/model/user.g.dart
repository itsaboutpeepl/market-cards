// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      walletAddress: json['walletAddress'] as String,
      addressLineOne: json['addressLineOne'] as String?,
      addressCity: json['addressCity'] as String?,
      postCode: json['postCode'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'walletAddress': instance.walletAddress,
      'addressLineOne': instance.addressLineOne,
      'addressCity': instance.addressCity,
      'postCode': instance.postCode,
      'email': instance.email,
      'phone': instance.phone,
    };
