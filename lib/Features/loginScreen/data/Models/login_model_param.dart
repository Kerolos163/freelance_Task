class LogInModelParam {
  final String phone;
  final String password;
  final String phoneCode;

  LogInModelParam(
      {required this.phone, required this.password, required this.phoneCode});
  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'password': password,
      'phone_code': phoneCode,
    };
  }
}
