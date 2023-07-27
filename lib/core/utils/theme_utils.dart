part of 'utils.dart';

class ThemeUtils {
  ThemeUtils._();
  static ThemeData get theme {
    return ThemeData(
      primaryColor: AppColors.appPrimaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: AppFontFamily.poppins,
      splashColor: Colors.white.withOpacity(0.1),
      highlightColor: Colors.white.withOpacity(0.1),
      unselectedWidgetColor: Colors.grey.shade400,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.appPrimaryColor,
        selectionColor: AppColors.appSecondaryColor.withOpacity(0.1),
        selectionHandleColor: AppColors.appSecondaryColor,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ), colorScheme: ColorScheme.fromSwatch(
        primarySwatch: generateMaterialColor(AppColors.appPrimaryColor),
      ).copyWith(secondary: AppColors.appSecondaryColor).copyWith(background: AppColors.backgroundColor),
    );
  }
}
