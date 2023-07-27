part of 'constants.dart';

class Sizes {
  Sizes._();

  static const double s0 = 0;
  static const double s1 = 1;
  static const double s2 = 2;
  static const double s3 = 3;
  static const double s4 = 4;
  static const double s6 = 6;
  static const double s7 = 7;
  static const double s8 = 8;
  static const double s10 = 10;
  static const double s12 = 12;
  static const double s13 = 13;
  static const double s14 = 14;
  static const double s15 = 15;
  static const double s16 = 16;
  static const double s17 = 17;
  static const double s18 = 18;
  static const double s20 = 20;
  static const double s21 = 21;
  static const double s22 = 22;
  static const double s24 = 24;
  static const double s26 = 26;
  static const double s28 = 28;
  static const double s30 = 30;
  static const double s32 = 32;
  static const double s34 = 34;
  static const double s35 = 35;
  static const double s36 = 36;
  static const double s38 = 38;
  static const double s40 = 40;
  static const double s42 = 42;
  static const double s44 = 44;
  static const double s46 = 46;
  static const double s48 = 48;
  static const double s50 = 50;
  static const double s53 = 53;
  static const double s52 = 52;
  static const double s56 = 56;
  static const double s58 = 58;
  static const double s60 = 60;
  static const double s62 = 62;
  static const double s64 = 64;
  static const double s68 = 68;
  static const double s76 = 76;
  static const double s80 = 80;
  static const double s85 = 85;
  static const double s88 = 88;
  static const double s90 = 90;
  static const double s92 = 92;
  static const double s93 = 93;
  static const double s95 = 95;
  static const double s96 = 96;
  static const double s97 = 97;
  static const double s98 = 98;
  static const double s100 = 100;
  static const double s103 = 103;
  static const double s105 = 105;
  static const double s106 = 106;
  static const double s110 = 110;
  static const double s116 = 116;
  static const double s120 = 120;
  static const double s127 = 127;
  static const double s130 = 130;
  static const double s136 = 136;
  static const double s140 = 140;
  static const double s148 = 148;
  static const double s150 = 150;
  static const double s156 = 156;
  static const double s160 = 160;
  static const double s168 = 168;
  static const double s170 = 170;
  static const double s180 = 180;
  static const double s190 = 190;
  static const double s200 = 200;
  static const double s204 = 204;
  static const double s210 = 210;
  static const double s220 = 220;
  static const double s222 = 222;
  static const double s224 = 224;

  static const double s213 = 213;
  static const double s230 = 230;
  static const double s240 = 240;
  static const double s250 = 250;

  static const double s252 = 252;

  static const double s256 = 256;
  static const double s264 = 264;
  static const double s260 = 260;
  static const double s268 = 268;
  static const double s280 = 280;
  static const double s300 = 300;
  static const double s310 = 310;
  static const double s312 = 312;
  static const double s320 = 320;
  static const double s330 = 330;
  static const double s350 = 350;
  static const double s368 = 368;
  static const double s375 = 375;
  static const double s378 = 378;
  static const double s398 = 388;
}

extension SizeExtension on double {
  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);
}
