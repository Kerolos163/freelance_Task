import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance_task/Features/HomeScreen/presntation/view/home.dart';
import 'package:freelance_task/Features/loginScreen/presentation/view/login_screen.dart';
import 'package:freelance_task/Features/loginScreen/presentation/viewmodel/login_provider.dart';
import 'package:freelance_task/core/api_services/dio_helper/dio_helper.dart';
import 'package:freelance_task/core/cash_services/cashe_helper.dart';
import 'package:freelance_task/core/constant.dart';
import 'package:freelance_task/core/utils/app_colors.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CasheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<LogInProvider>(
            create: (context) => LogInProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            primaryColor: AppColors.primary,
            useMaterial3: true,
          ),
          home: CasheHelper.getData(key: AppConstant.userToken) == null
              ? const LogInScreen()
              : const HomeScreen(),
        ),
      ),
    );
  }
}
