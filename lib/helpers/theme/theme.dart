import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_selection.dart';

// default icons is icons rounded

ColorScheme colorSchemeData = const ColorScheme(
  primary: ColorsConst.primary,
  secondary: ColorsConst.primary,
  surface: ColorsConst.white,
  background: ColorsConst.backgroundColor,
  secondaryContainer: ColorsConst.blackFour,
  error: ColorsConst.warning,
  onPrimary: ColorsConst.blackFive,
  onSecondary: ColorsConst.blackThree,
  onSurface: Color(0xFF000000),
  onBackground: ColorsConst.black,
  onError: ColorsConst.white,
  brightness: Brightness.light,
);

final extraTheme = GoogleFonts.poppins(
  fontSize: 8,
  color: ColorsConst.blackThree,
  fontWeight: FontWeight.w300,
);
final extraLargeTheme = GoogleFonts.poppins(
  fontSize: 12,
  color: ColorsConst.primary,
  fontWeight: FontWeight.w700,
);
final textThemeData = TextTheme(
  // poppins 500 22
  displayLarge: GoogleFonts.dmSans(
    fontSize: 22,
    color: ColorsConst.black,
    fontWeight: FontWeight.w500,
  ),

  // 400 8

  // labelSmall: GoogleFonts.poppins(
  //   fontSize: 8,
  //   color: ColorsConst.blackThree,
  //   fontWeight: FontWeight.w400,
  // ),
  // 500 18
  displayMedium: GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: ColorsConst.black,
  ),
  // 600 18
  displaySmall: GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: ColorsConst.white,
  ),
  // 600 14
  headlineMedium: GoogleFonts.dmSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.25,
    color: ColorsConst.black,
  ),

  // 600 12
  headlineSmall: GoogleFonts.dmSans(
      fontSize: 12, fontWeight: FontWeight.w600, color: ColorsConst.black),
  // 600 20
  titleLarge: GoogleFonts.dmSans(
      fontSize: 20, fontWeight: FontWeight.w600, color: ColorsConst.black),
  // poppins 500 12
  titleMedium: GoogleFonts.dmSans(
      fontSize: 12, fontWeight: FontWeight.w500, color: ColorsConst.blackThree),
  // 400 18
  titleSmall: GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: ColorsConst.black,
  ),

  // 400 10
  bodyLarge: GoogleFonts.dmSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: ColorsConst.blackThree,
  ),
// 400 14
  bodyMedium: GoogleFonts.dmSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ColorsConst.black,
  ),
  // 500 14
  labelLarge: GoogleFonts.dmSans(
      fontSize: 14, fontWeight: FontWeight.w500, color: ColorsConst.white),
  // poppins 400 12
  bodySmall: GoogleFonts.dmSans(
    fontSize: 12,
    letterSpacing: 0.3,
    fontWeight: FontWeight.w400,
    color: ColorsConst.blackThree,
  ),
  // 500 10
  labelSmall: GoogleFonts.dmSans(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: ColorsConst.blackThree,
      letterSpacing: 0.5),
);

// BorderRadius get miniBoxCornerRadius => BorderRadius.circular(4);
BorderRadius get miniBoxCornerRadius => BorderRadius.circular(10);
BorderRadius get largeBoxCornerRadius => BorderRadius.circular(12);
BorderRadius get smallBoxCornerRadius => BorderRadius.circular(5);
BorderRadius get verysmallBoxCornerRadius => BorderRadius.circular(2);
BorderRadius get extraLargeBoxCornerRadius => BorderRadius.circular(20);
// BorderRadius get smallBoxCornerRadius => BorderRadius.circular(3);
// BorderRadius get extrasmallBoxCornerRadius => BorderRadius.circular(2);
BoxDecoration get monoBoxCorner {
  return BoxDecoration(borderRadius: miniBoxCornerRadius);
}

// BorderRadius get smallBorderRadius => BorderRadius.circular(3);
// BoxDecoration get smallboxCorner {
//   return BoxDecoration(borderRadius: smallBoxCornerRadius);
// }

const SystemUiOverlayStyle lightTaskBar = SystemUiOverlayStyle(
  statusBarColor: ColorsConst.white,
  statusBarIconBrightness:
      Brightness.dark, //<-- For Android SEE HERE (dark icons)
  statusBarBrightness: Brightness.light,
);
