import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constants.dart';
import 'core/utils/app_router.dart';

void main() {
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          title: 'Bookly App',
          debugShowCheckedModeBanner: false,
          // home: const SplashView(),
        );
      },
    );
  }
}
