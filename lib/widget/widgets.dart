import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:finployee/core/constants/constants.dart';
import 'package:finployee/core/utils/utils.dart';
import 'package:finployee/widget/commam_text.dart';

import 'package:finployee/models/models.dart';

part 'app_bars.dart';
part 'bottom_nav_bar.dart';
part 'expanded_section.dart';
part 'emp_widget.dart';

class EmptyWidget extends StatelessWidget {
  final String message;
  const EmptyWidget(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyle(
          fontSize: Sizes.s16.h,
          fontWeight: FontWeight.w500,
          fontFamily: AppFontFamily.poppins,
          color: AppColors.textPrimaryColor,
        ),
      ),
    );
  }
}
