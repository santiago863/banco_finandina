import 'package:banco_finandina/presentation/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  static final title = GoogleFonts.roboto(
    color: AppColor.white,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  static final subtitle = GoogleFonts.roboto(
    color: AppColor.white,
    fontWeight: FontWeight.normal,
    fontSize: 24,
  );

  static final text = GoogleFonts.roboto(
    color: AppColor.white,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );
}
