import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailButton extends StatelessWidget {
  const BookDetailButton({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    final Uri previewUrl = Uri.parse(bookModel.volumeInfo!.previewLink!);

    Future<void> launchPreviewUrl() async {
      if (await canLaunchUrl(previewUrl)) {
        await launchUrl(previewUrl);
      }
    }

    Future<void> launchDownloadUrl(downloadUrl) async {
      if (await canLaunchUrl(downloadUrl)) {
        await launchUrl(downloadUrl);
      }
    }

    var width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width * 0.73,
      height: 48.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () async {
                if (bookModel.accessInfo!.pdf!.isAvailable!) {
                  final Uri downloadUrl =
                      Uri.parse(bookModel.accessInfo!.pdf!.acsTokenLink!);

                  await launchDownloadUrl(downloadUrl);
                } else {}
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),
              child: Text(
                'Get Free',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: launchPreviewUrl,
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffEF8262),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
              child: Text(
                'Preview',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
