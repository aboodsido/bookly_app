import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/models/book_model/book_model.dart';
import '../../../../../../core/widgets/custom_snackbar.dart';

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
                await checkDownloadUrlCorrect(launchDownloadUrl, context);
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
                bookModel.accessInfo!.pdf!.isAvailable! &&
                        bookModel.accessInfo!.pdf!.acsTokenLink != null
                    ? 'Get Free'
                    : 'Not Available',
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

  Future<void> checkDownloadUrlCorrect(
      Future<void> Function(dynamic downloadUrl) launchDownloadUrl,
      BuildContext context) async {
    if (bookModel.accessInfo!.pdf!.isAvailable!) {
      if (bookModel.accessInfo!.pdf!.acsTokenLink != null) {
        final Uri downloadUrl =
            Uri.parse(bookModel.accessInfo!.pdf!.acsTokenLink!);

        await launchDownloadUrl(downloadUrl);
      } else {
        customSnackBar(context, text: 'This book is not available to download');
      }
    } else {
      customSnackBar(context, text: 'This book is not available to download');
    }
  }
}
