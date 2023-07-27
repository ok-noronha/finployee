part of 'constants.dart';

class AppColors {
  AppColors._();

  static const Color appPrimaryColor = Color.fromARGB(255, 16, 112, 201);

  static const Color appSecondaryColor = Color(0xffF8E2A0);

  static const Color backgroundColor = Colors.white;

  static const Color textErrorColor = Color(0xffE23223);

  static const Color textPrimaryColor = Color(0xff202F3D);

  static const Color textSecondaryColor = Color(0xff9BA2A8);

  static const Color textTertiaryColor = Color(0xffA0A7AD);

  static const Color textHintAndDisableColor = Color(0xffC3C7CB);

  static const Color textWeekColor = Color(0xffC3C7CB);

  static const Color textTypographyPrimaryOnLight = Color(0xff010B1E);
  static const Color txtSuccess = Color(0xff66A843);

  static const Color iconPrimaryColor = Color(0xff202F3D);

  static const Color accentGreenPale = Color(0xffCCECBC);
  static const Color accentGreen = Color(0xffBDE9A7);

  static const Color bGSurface = Color(0xffF7F8FA);
  static const Color bgSurfaceSecondary = Color(0xffFDF7E7);

  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static const Color border = Color(0xffF2F2F3);
  static const Color borderSecondary = Color(0xffFFFBEE);

  static const Color dividerColor = Color(0xffF7F7F7);

  static const Color checkBoxColor = Color(0xffEDA076);

  static const Color darkGrey = Color(0xff828382);

  static const Color accentPaleViolet = Color(0xffE9D4FF);
  static const Color accentviolet = Color(0xffDDBDFF);

  static const Color transparent = Colors.transparent;
  static const Color green = Color(0xff3EA906);
  static const Color paymentPending = Color(0xff6A747D);

  static const Color requestPopUpHeaderTile = Color(0xffE9D4FF);
  static const Color linkColor = Color(0xff3366CC);

  static const Color arrowDropDownColor = Color(0xffD9D9D9);
  static const Color selectTypeDailogBorderColor = Color(0xffA2A2A2);

  static const Color selectTypeDialogTextColor = Color(0xff979797);

  static const Color chart1 = Color(0xffE25450);
  static const Color chart2 = Color(0xffFFD6AA);
  static const Color chart3 = Color(0xffFFBC73);
  static const Color chart4 = Color(0xffFD8A0C);
  static const Color chart5 = Color(0xffFFE082);
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: color,
    100: color,
    200: color,
    300: color,
    400: color,
    500: color,
    600: color,
    700: color,
    800: color,
    900: color,
  });
}
