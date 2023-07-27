import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:finployee/core/constants/constants.dart';
import 'package:finployee/widget/commam_text.dart';

Future<bool> _showConfirmationDialog(
  BuildContext context, {
  required String title,
  required String buttonFalseText,
  required String buttonTrueText,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => WillPopScope(
      onWillPop: () async => false,
      child: CupertinoAlertDialog(
        content: CommonText(
          title,
          color: AppColors.textPrimaryColor,
          align: TextAlign.center,
          size: Sizes.s17.sp,
          maxLine: 4,
          weight: FontWeight.w600,
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context, false),
            child: CommonText(
              buttonFalseText,
              weight: FontWeight.w400,
              size: Sizes.s17.sp,
              color: const Color(0xff007AFF),
            ),
          ),
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context, true),
            child: CommonText(
              buttonTrueText,
              weight: FontWeight.w600,
              size: Sizes.s17.sp,
              color: const Color(0xff007AFF),
            ),
          )
        ],
      ),
    ),
  );
}
