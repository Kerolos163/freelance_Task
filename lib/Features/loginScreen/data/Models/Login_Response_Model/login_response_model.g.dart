// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseModelImpl(
      result: json['result'] as bool?,
      message: json['message'] as String?,
      token: json['access_token'] as String?,
      tokenType: json['token_type'] as String?,
      user: json['user'] == null
          ? null
          : LoginUserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseModelImplToJson(
        _$LoginResponseModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'access_token': instance.token,
      'token_type': instance.tokenType,
      'user': instance.user,
    };

_$LoginUserModelImpl _$$LoginUserModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginUserModelImpl(
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

Map<String, dynamic> _$$LoginUserModelImplToJson(
        _$LoginUserModelImpl instance) =>
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
