import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MythemeData {
  static Color black=Color(0xff000000);
  static Color semimoove=Color(0xff371B34);
  static Color green=Color(0xff027A48);
  static Color grey=Color(0xff667085);

  static ThemeData lightMode=ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color:black,
          size:35,
        ),
        centerTitle: true,
        backgroundColor:Colors.transparent,
        elevation:0.0,
      ),
      textTheme: TextTheme(
        bodyLarge:GoogleFonts.elMessiri(
          fontWeight:FontWeight.bold,
          fontSize:30,
          color:Color(0xff242424),
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color:Color(0xff242424),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color:Color(0xff242424),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor:grey,
          selectedItemColor:green,
          unselectedItemColor:semimoove,
          type: BottomNavigationBarType.shifting
      )
  );
  static  ThemeData darkMode=ThemeData();
}