import 'package:flutter/material.dart';
import 'package:finployee/core/constants/constants.dart';

class AppPrimaryButton extends StatelessWidget {
  final String title;
  final Color btnColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function() onTap;
  final bool loading;

  ///default this value is false
  final bool showBtn;

  const AppPrimaryButton({
    super.key,
    required this.title,
    this.btnColor = AppColors.appPrimaryColor,
    this.fontSize,
    this.fontWeight,
    required this.onTap,
    this.loading = false,
    this.showBtn = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: showBtn
          ? loading == false
              ? onTap
              : () {}
          : () {},
      child: Container(
        height: Sizes.s56.h,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: loading || !showBtn
              ? AppColors.appPrimaryColor.withOpacity(0.4)
              : btnColor,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: AppColors.appPrimaryColor.withOpacity(0.2),
              offset: const Offset(0, 12),
              blurRadius: 12,
            ),
          ],
        ),
        child: loading
            ? SizedBox(
                height: Sizes.s24.h,
                width: Sizes.s24.h,
                child: const CircularProgressIndicator(),
              )
            : Text(
                title,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: fontSize ?? Sizes.s16.sp,
                    fontWeight: fontWeight ?? FontWeight.w600,
                    fontFamily: AppFontFamily.poppins),
              ),
      ),
    );
  }
}
