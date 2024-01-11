import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:freelance_task/Features/loginScreen/data/Models/Login_Response_Model/login_response_model.dart';
import 'package:freelance_task/Features/loginScreen/data/Models/login_model_param.dart';
import 'package:freelance_task/core/api_services/dio_helper/dio_helper.dart';
import 'package:freelance_task/core/api_services/end_points.dart';

enum LoginScreenState { initial, loading, success, error }

class LogInProvider extends ChangeNotifier {
  LoginScreenState state = LoginScreenState.initial;
  bool isVisiable = false;
  changeVisibility() {
    isVisiable = !isVisiable;
    notifyListeners();
  }

  LoginResponseModel? model;
  String errorMessage = "";
  userLogin({required LogInModelParam logInModelParam}) async {
    state = LoginScreenState.loading;
    await DioHelper.postData(
            url: Endpoint.logIn, data: logInModelParam.toJson())
        .then((value) {
      model = LoginResponseModel.fromJson(value.data);
      log(model.toString());
      state = LoginScreenState.success;
    }).catchError((error) {
      
      state = LoginScreenState.error;
    });
    notifyListeners();
  }
}
