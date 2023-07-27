import 'package:flutter/material.dart';
import 'package:finployee/core/constants/constants.dart';

const double _kPadding = 20.0;

const double _kBorderRadius = 10.0;

const double _kLoaderSize = 45.0;

class AppLoader extends StatelessWidget {
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black12,
          ),
          Container(
            padding: const EdgeInsets.all(_kPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(_kBorderRadius),
            ),
            child: const SizedBox(
              height: _kLoaderSize,
              width: _kLoaderSize,
              child: CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.appPrimaryColor),
                backgroundColor: AppColors.bgSurfaceSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
