import 'package:flutter/material.dart';
import 'package:freelance_task/Features/loginScreen/data/Models/login_model_param.dart';
import 'package:freelance_task/Features/loginScreen/presentation/viewmodel/login_provider.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:freelance_task/core/utils/app_strings.dart';
import 'package:freelance_task/core/widget/custom_buttons.dart';
import 'package:freelance_task/core/widget/textfield_with_label.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LogInProvider(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Spacer(),
                const TextFieldWithLabel(
                  txt: AppStrings.phone,
                  keyboardType: TextInputType.number,
                ),
                const Gap(20),
                Consumer<LogInProvider>(
                  builder: (context, myProvider, child) {
                    return TextFieldWithLabel(
                      txt: AppStrings.password,
                      obscureText: !myProvider.isVisiable,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          myProvider.changeVisibility();
                        },
                        child: Icon(
                          myProvider.isVisiable
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.primary,
                        ),
                      ),
                    );
                  },
                ),
                const Spacer(),
                Consumer<LogInProvider>(
                  builder: (context, myProvider, child) {
                    return CustomButton(
                      label: AppStrings.login,
                      onPressed: () {
                        myProvider.userLogin(
                          logInModelParam: LogInModelParam(
                              phone: "123456789554",
                              password: "123456789",
                              phoneCode: "+20"),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
