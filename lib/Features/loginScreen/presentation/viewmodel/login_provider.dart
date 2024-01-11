import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:freelance_task/Features/loginScreen/data/Models/Login_Response_Model/login_response_model.dart';
import 'package:freelance_task/Features/loginScreen/data/Models/login_model_param.dart';
import 'package:freelance_task/core/api_services/dio_helper/dio_helper.dart';
import 'package:freelance_task/core/api_services/end_points.dart';

class LogInProvider extends ChangeNotifier {
  bool isVisiable = false;
  changeVisibility() {
    isVisiable = !isVisiable;
    notifyListeners();
  }

  // String state = "Loading";
  LoginResponseModel? model;
  userLogin({required LogInModelParam logInModelParam}) async {
    // state = "Loading";
    await DioHelper.postData(
            url: Endpoint.logIn, data: logInModelParam.toJson())
        .then((value) {
      model = LoginResponseModel.fromJson(value.data);
    }).catchError((error) {
      log(error.toString());
    });
    notifyListeners();
  }
}
