import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/core/themes/my_app_k_colors.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

class MyAppThemes extends GetxService {
  ThemeData getLightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: GoogleFonts.epilogueTextTheme().copyWith(
        displayMedium: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      scaffoldBackgroundColor: MyAppKColors.kBgColor,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            GoogleFonts.epilogue(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: MyAppKColors.kLightPurpleColor,
            ),
          ),
        ),
      ),
    );
  }
}
