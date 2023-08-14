import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 230.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
    );
  }
}
