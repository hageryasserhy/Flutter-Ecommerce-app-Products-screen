import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

TextStyle titleTextStyle = GoogleFonts.getFont('Questrial',fontWeight: FontWeight.w700,);

TextStyle descTextStyle = GoogleFonts.getFont('Questrial',fontWeight: FontWeight.w700);

TextStyle priceAfterDisTextStyle = GoogleFonts.getFont('Questrial',fontWeight: FontWeight.w700);

TextStyle priceBeforeDisTextStyle = GoogleFonts.getFont('Questrial',
  color: Color(ColorPalette.originalPrise),
  decoration: TextDecoration.lineThrough,
  decorationColor: Color(ColorPalette.originalPrise),
);

TextStyle reviewTextStyle = const TextStyle(fontWeight: FontWeight.w500,);

TextStyle searchBarHintText = GoogleFonts.getFont('Questrial');

