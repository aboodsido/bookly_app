import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErroWidget extends StatelessWidget {
  const CustomErroWidget({super.key, required this.errMessage});

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: TextStyle(fontSize: 20.sp),
      ),
    );
  }
}
