part of 'widgets.dart';

class AppBars {
  AppBars._();

  static PreferredSize homeAppBar(
    BuildContext context, {
    required String title,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: TextStyle(
            fontSize: Sizes.s18.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: Sizes.s1 / 2,
            color: Colors.black,
            fontFamily: AppFontFamily.poppins,
          ),
        ),
        centerTitle: true,
      ),
    );
  }

  static PreferredSize backAppBar(
    BuildContext context, {
    String title = "",
    List<Widget> actions = const [],
    bool showBackButton = true,
    TextStyle? style,
    Function()? callBack,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(
          title,
          style: style ??
              TextStyle(
                fontSize: Sizes.s16.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: AppFontFamily.poppins,
              ),
        ),
        leading: showBackButton
            ? GestureDetector(
                onTap: callBack ?? () => Navigator.pop(context),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.s8.w),
                  child: SvgPicture.asset(AppAssets.backArrow),
                ),
              )
            : null,
        leadingWidth: 60,
        centerTitle: true,
        actions: actions,
      ),
    );
  }

  static PreferredSize moveInDaySetupFormAppBar(
    BuildContext context, {
    required int formNumber,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: GestureDetector(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.s8.w),
            child: SvgPicture.asset(AppAssets.backArrow),
          ),
          onTap: () => Navigator.pop(context),
        ),
        leadingWidth: 60,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: kPadding.w),
            child: Center(
              child: CommonText(
                "$formNumber / 5",
                weight: FontWeight.w600,
                color: AppColors.textPrimaryColor,
                size: Sizes.s14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
