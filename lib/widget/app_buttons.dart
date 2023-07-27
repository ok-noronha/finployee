import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:finployee/core/constants/constants.dart';
import 'package:finployee/widget/commam_text.dart';

class PaidOrPayNowButton extends StatelessWidget {
  final bool paid;
  final Function() onTap;
  const PaidOrPayNowButton({
    super.key,
    required this.paid,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return paid ? paidWidget() : payNow(context);
  }

  Widget paidWidget() {
    return Row(
      children: [
        const CommonText(
          'Paid',
          color: Color(0xff66A843),
        ),
        SizedBox(width: Sizes.s4.w),
        SvgPicture.asset(AppAssets.check)
      ],
    );
  }

  Widget payNow(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Sizes.s32.h,
        decoration: BoxDecoration(
          color: const Color(0xffE25450).withOpacity(0.1),
          border: Border.all(
            color: const Color(0xffE25450).withOpacity(0.1),
          ),
          borderRadius: BorderRadius.circular(Sizes.s8.sp),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.s12.w,
          vertical: Sizes.s7.h,
        ),
        child: CommonText(
          'Pay Now',
          color: AppColors.appPrimaryColor,
          weight: FontWeight.w600,
          size: Sizes.s12.sp,
        ),
      ),
    );
  }
}
