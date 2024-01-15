import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
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
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
