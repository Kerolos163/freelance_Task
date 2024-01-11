// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return _LoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseModel {
  bool? get result => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "token_type")
  String? get tokenType => throw _privateConstructorUsedError;
  LoginUserModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseModelCopyWith<LoginResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseModelCopyWith<$Res> {
  factory $LoginResponseModelCopyWith(
          LoginResponseModel value, $Res Function(LoginResponseModel) then) =
      _$LoginResponseModelCopyWithImpl<$Res, LoginResponseModel>;
  @useResult
  $Res call(
      {bool? result,
      String? message,
      @JsonKey(name: "access_token") String? token,
      @JsonKey(name: "token_type") String? tokenType,
      LoginUserModel? user});

  $LoginUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res, $Val extends LoginResponseModel>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? token = freezed,
    Object? tokenType = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginUserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LoginUserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseModelImplCopyWith<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  factory _$$LoginResponseModelImplCopyWith(_$LoginResponseModelImpl value,
          $Res Function(_$LoginResponseModelImpl) then) =
      __$$LoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? result,
      String? message,
      @JsonKey(name: "access_token") String? token,
      @JsonKey(name: "token_type") String? tokenType,
      LoginUserModel? user});

  @override
  $LoginUserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$LoginResponseModelImplCopyWithImpl<$Res>
    extends _$LoginResponseModelCopyWithImpl<$Res, _$LoginResponseModelImpl>
    implements _$$LoginResponseModelImplCopyWith<$Res> {
  __$$LoginResponseModelImplCopyWithImpl(_$LoginResponseModelImpl _value,
      $Res Function(_$LoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? token = freezed,
    Object? tokenType = freezed,
    Object? user = freezed,
  }) {
    return _then(_$LoginResponseModelImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseModelImpl implements _LoginResponseModel {
  _$LoginResponseModelImpl(
      {this.result,
      this.message,
      @JsonKey(name: "access_token") this.token,
      @JsonKey(name: "token_type") this.tokenType,
      this.user});

  factory _$LoginResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseModelImplFromJson(json);

  @override
  final bool? result;
  @override
  final String? message;
  @override
  @JsonKey(name: "access_token")
  final String? token;
  @override
  @JsonKey(name: "token_type")
  final String? tokenType;
  @override
  final LoginUserModel? user;

  @override
  String toString() {
    return 'LoginResponseModel(result: $result, message: $message, token: $token, tokenType: $tokenType, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseModelImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result, message, token, tokenType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      __$$LoginResponseModelImplCopyWithImpl<_$LoginResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseModel implements LoginResponseModel {
  factory _LoginResponseModel(
      {final bool? result,
      final String? message,
      @JsonKey(name: "access_token") final String? token,
      @JsonKey(name: "token_type") final String? tokenType,
      final LoginUserModel? user}) = _$LoginResponseModelImpl;

  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginResponseModelImpl.fromJson;

  @override
  bool? get result;
  @override
  String? get message;
  @override
  @JsonKey(name: "access_token")
  String? get token;
  @override
  @JsonKey(name: "token_type")
  String? get tokenType;
  @override
  LoginUserModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseModelImplCopyWith<_$LoginResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) {
  return _LoginUserModel.fromJson(json);
}

/// @nodoc
mixin _$LoginUserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_code")
  String? get phoneCode => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: "point_balance")
  int? get pointBalance => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUserModelCopyWith<LoginUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUserModelCopyWith<$Res> {
  factory $LoginUserModelCopyWith(
          LoginUserModel value, $Res Function(LoginUserModel) then) =
      _$LoginUserModelCopyWithImpl<$Res, LoginUserModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      @JsonKey(name: "phone_code") String? phoneCode,
      String? address,
      int? gender,
      String? email,
      String? avatar,
      int? balance,
      @JsonKey(name: "point_balance") int? pointBalance,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$LoginUserModelCopyWithImpl<$Res, $Val extends LoginUserModel>
    implements $LoginUserModelCopyWith<$Res> {
  _$LoginUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? phoneCode = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? balance = freezed,
    Object? pointBalance = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: freezed == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      pointBalance: freezed == pointBalance
          ? _value.pointBalance
          : pointBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginUserModelImplCopyWith<$Res>
    implements $LoginUserModelCopyWith<$Res> {
  factory _$$LoginUserModelImplCopyWith(_$LoginUserModelImpl value,
          $Res Function(_$LoginUserModelImpl) then) =
      __$$LoginUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      @JsonKey(name: "phone_code") String? phoneCode,
      String? address,
      int? gender,
      String? email,
      String? avatar,
      int? balance,
      @JsonKey(name: "point_balance") int? pointBalance,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$LoginUserModelImplCopyWithImpl<$Res>
    extends _$LoginUserModelCopyWithImpl<$Res, _$LoginUserModelImpl>
    implements _$$LoginUserModelImplCopyWith<$Res> {
  __$$LoginUserModelImplCopyWithImpl(
      _$LoginUserModelImpl _value, $Res Function(_$LoginUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? phoneCode = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? balance = freezed,
    Object? pointBalance = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LoginUserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: freezed == phoneCode
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      pointBalance: freezed == pointBalance
          ? _value.pointBalance
          : pointBalance // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginUserModelImpl implements _LoginUserModel {
  _$LoginUserModelImpl(
      {this.id,
      this.name,
      this.phone,
      @JsonKey(name: "phone_code") this.phoneCode,
      this.address,
      this.gender,
      this.email,
      this.avatar,
      this.balance,
      @JsonKey(name: "point_balance") this.pointBalance,
      this.latitude,
      this.longitude});

  factory _$LoginUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginUserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  @JsonKey(name: "phone_code")
  final String? phoneCode;
  @override
  final String? address;
  @override
  final int? gender;
  @override
  final String? email;
  @override
  final String? avatar;
  @override
  final int? balance;
  @override
  @JsonKey(name: "point_balance")
  final int? pointBalance;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LoginUserModel(id: $id, name: $name, phone: $phone, phoneCode: $phoneCode, address: $address, gender: $gender, email: $email, avatar: $avatar, balance: $balance, pointBalance: $pointBalance, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneCode, phoneCode) ||
                other.phoneCode == phoneCode) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.pointBalance, pointBalance) ||
                other.pointBalance == pointBalance) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phone,
      phoneCode,
      address,
      gender,
      email,
      avatar,
      balance,
      pointBalance,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserModelImplCopyWith<_$LoginUserModelImpl> get copyWith =>
      __$$LoginUserModelImplCopyWithImpl<_$LoginUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginUserModelImplToJson(
      this,
    );
  }
}

abstract class _LoginUserModel implements LoginUserModel {
  factory _LoginUserModel(
      {final int? id,
      final String? name,
      final String? phone,
      @JsonKey(name: "phone_code") final String? phoneCode,
      final String? address,
      final int? gender,
      final String? email,
      final String? avatar,
      final int? balance,
      @JsonKey(name: "point_balance") final int? pointBalance,
      final double? latitude,
      final double? longitude}) = _$LoginUserModelImpl;

  factory _LoginUserModel.fromJson(Map<String, dynamic> json) =
      _$LoginUserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  @JsonKey(name: "phone_code")
  String? get phoneCode;
  @override
  String? get address;
  @override
  int? get gender;
  @override
  String? get email;
  @override
  String? get avatar;
  @override
  int? get balance;
  @override
  @JsonKey(name: "point_balance")
  int? get pointBalance;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LoginUserModelImplCopyWith<_$LoginUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
