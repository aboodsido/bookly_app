import 'package:bookly_app/features/home/presentation/view/widgets/home_view_widgets/circle_play_icon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem({
    super.key,
    required this.imgUrl,
  });

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          SizedBox(
            width: 130.w,
            height: 190.h,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => const Center(
                  child: Icon(
                    Icons.warning,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            right: 10,
            child: CirclePlayIcon(),
          )
        ],
      ),
    );
  }
}
