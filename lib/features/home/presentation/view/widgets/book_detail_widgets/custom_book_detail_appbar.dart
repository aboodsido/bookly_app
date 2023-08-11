import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailAppbar extends StatelessWidget {
  const CustomBookDetailAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.go(AppRouter.kHomeRoute);
            },
            icon: const Icon(
              Icons.close_sharp,
              size: 30,
            ),
          ),
          const Icon(
            Icons.shopping_cart_outlined,
            size: 30,
          )
        ],
      ),
    );
  }
}
