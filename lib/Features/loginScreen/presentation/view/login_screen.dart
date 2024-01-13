import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:freelance_task/Features/HomeScreen/presntation/view/home.dart';
import 'package:freelance_task/Features/loginScreen/data/Models/login_model_param.dart';
import 'package:freelance_task/Features/loginScreen/presentation/viewmodel/login_provider.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:freelance_task/core/utils/app_strings.dart';
import 'package:freelance_task/core/widget/custom_buttons.dart';
import 'package:freelance_task/core/widget/custom_snake_bar.dart';
import 'package:freelance_task/core/widget/textfield_with_label.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Spacer(),
                TextFieldWithLabel(
                  txt: AppStrings.phone,
                  keyboardType: TextInputType.number,
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Phone Number';
                    }
                    return null;
                  },
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
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                    );
                  },
                ),
                const Spacer(),
                Consumer<LogInProvider>(
                  builder: (context, myProvider, child) {
                    return myProvider.state == LoginScreenState.loading
                        ? const CircularProgressIndicator()
                        : CustomButton(
                            label: AppStrings.login,
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await myProvider.userLogin(
                                  logInModelParam: LogInModelParam(
                                    phone: phoneController.text,
                                    password: passwordController.text,
                                    phoneCode: "+20",
                                  ),
                                );
                                if (myProvider.state ==
                                    LoginScreenState.success) {
                                  if (mounted) {
                                    onTapLogin(myProvider, context);
                                  }
                                }
                              }
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

  void onTapLogin(LogInProvider myProvider, BuildContext context) {
    if (myProvider.model!.result ?? false) {
      if (mounted) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
      }
    } else {
      log(myProvider.model!.message ?? "");
      customSnakeBar(context,
          label: myProvider.model!.message ?? "",
          backgroundColor: AppColors.red);
    }
  }
}
