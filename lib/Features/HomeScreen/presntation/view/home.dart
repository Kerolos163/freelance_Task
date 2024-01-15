import 'package:flutter/material.dart';
import 'package:freelance_task/Features/HomeScreen/presntation/viewmodel/home_provider.dart';
import 'package:freelance_task/Features/loginScreen/presentation/view/login_screen.dart';
import 'package:freelance_task/core/cash_services/cashe_helper.dart';
import 'package:freelance_task/core/constant.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:freelance_task/core/utils/app_strings.dart';
import 'package:freelance_task/core/widget/custom_buttons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeProvider myProvider;
  // @override
  // void initState() {
  //   myProvider = Provider.of<HomeProvider>(context, listen: false);
  //   log(myProvider.logOut.toString());
  //   if (myProvider.logOut) {
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => const LogInScreen()));
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, homeProvider, child) {
        if (homeProvider.state == HomeScreenState.error) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LogInScreen(),
              ),
            );
          });
        } else if (homeProvider.state == HomeScreenState.success) {
          return Scaffold(
            body: Center(
              child: CustomButton(
                color: AppColors.red,
                label: AppStrings.logout,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LogInScreen(),
                    ),
                  );
                  CasheHelper.removeData(key: AppConstant.userToken);
                },
              ),
            ),
          );
        }
        return const Scaffold(
            body: Center(
          child: CircularProgressIndicator(),
        ));
      },
    );
  }
}
