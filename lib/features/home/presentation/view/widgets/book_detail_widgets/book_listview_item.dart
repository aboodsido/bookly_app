import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants.dart';

class SimilarBookListviewItem extends StatelessWidget {
  const SimilarBookListviewItem({
    super.key, required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 80.w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imgUrl),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
