import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({
    bool? result,
    String? message,
    @JsonKey(name: "access_token") String? token,
    @JsonKey(name: "token_type") String? tokenType,
    LoginUserModel? user
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class LoginUserModel with _$LoginUserModel {
  factory LoginUserModel({
    int? id,
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
    double? longitude,
  }) = _LoginUserModel;

  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);
}
