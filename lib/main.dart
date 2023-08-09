import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'constants.dart';
import 'features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kBackgroundColor,
          ),
          title: 'Bookly App',
          debugShowCheckedModeBanner: false,
          home: const SplashView(),
        );
      },
    );
  }
}
