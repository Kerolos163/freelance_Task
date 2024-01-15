import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:freelance_task/Features/HomeScreen/Data/models/user_model.dart';
import 'package:freelance_task/core/api_services/dio_helper/dio_helper.dart';
import 'package:freelance_task/core/api_services/end_points.dart';
import 'package:freelance_task/core/cash_services/cashe_helper.dart';
import 'package:freelance_task/core/constant.dart';

enum HomeScreenState { initial, loading, success, error, unAuth }

class HomeProvider extends ChangeNotifier {
  HomeScreenState state = HomeScreenState.initial;
  UserModel? model;
  getUser() async {
    state = HomeScreenState.loading;
    var myToken = CasheHelper.getData(key: AppConstant.userToken);
    notifyListeners();
    await DioHelper.getData(url: Endpoint.getCustomers, token: myToken)
        .then((value) {
      log(value.statusCode.toString());
      model = UserModel.fromJson(value.data['data']);
      log(model.toString());
      state = HomeScreenState.success;
      notifyListeners();
    }).catchError((error) {
      state = HomeScreenState.error;

      log(error.toString());
      notifyListeners();
    });
  }
}
