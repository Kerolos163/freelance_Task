// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      phoneCode: json['phone_code'] as String?,
      address: json['address'] as String?,
      gender: json['gender'] as int?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      balance: json['balance'] as int?,
      pointBalance: json['point_balance'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'phone_code': instance.phoneCode,
      'address': instance.address,
      'gender': instance.gender,
      'email': instance.email,
      'avatar': instance.avatar,
      'balance': instance.balance,
      'point_balance': instance.pointBalance,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
