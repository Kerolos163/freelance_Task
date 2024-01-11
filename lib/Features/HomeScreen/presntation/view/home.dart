import 'package:flutter/material.dart';
import 'package:freelance_task/Features/loginScreen/presentation/view/login_screen.dart';
import 'package:freelance_task/core/cash_services/cashe_helper.dart';
import 'package:freelance_task/core/constant.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:freelance_task/core/utils/app_strings.dart';
import 'package:freelance_task/core/widget/custom_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomButton(
          color: AppColors.red,
          label: AppStrings.logout,
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const LogInScreen(),
            ));
            CasheHelper.removeData(key: AppConstant.userToken);
          },
        ),
      ),
    );
  }
}
