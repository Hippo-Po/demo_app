import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//ColorsForProjects
const kPrimaryTextColors = (0xFF1FA44F);
const kSecondaryTextColors = Colors.black;

const kFlatButtonTextColors = (0xFF1FA44F);
const kElevatedButtonTextColors = Colors.white;

Color kElevatedButtonColors = Colors.green.shade500;
const kSpanTextStyle = (0xFF1FA44F);

//AppBar
const kAppBarBackGroundColor = (0xFF1FA44F);
const kAppBarTextAndArrowColor = Colors.white;

//PrimaryTextStyle
TextStyle primaryTextStyle = GoogleFonts.kanit(
  textStyle: const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Color(kPrimaryTextColors),
  ),
);

//SecondaryTextStyle
TextStyle secondaryTextStyle = GoogleFonts.kanit(
  textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: kSecondaryTextColors,
  ),
);

ButtonStyle flatButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.green))));

TextStyle flatButtonTextStyle = GoogleFonts.kanit(
  textStyle: const TextStyle(
    color: Color(kFlatButtonTextColors),
    fontSize: 16,
    fontFamily: 'Kanit',
    fontWeight: FontWeight.w500,
  ),
);
ButtonStyle elevatedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll<Color>(kElevatedButtonColors),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(color: Colors.green),
    ),
  ),
);

TextStyle elevatedButtonTextStyle = GoogleFonts.kanit(
  textStyle: const TextStyle(
    color: kElevatedButtonTextColors,
    fontSize: 16,
    fontFamily: 'Kanit',
    fontWeight: FontWeight.w500,
  ),
);

TextStyle spanTextStyle = GoogleFonts.kanit(
  textStyle: const TextStyle(
    color: Color(kSpanTextStyle),
    fontSize: 14,
    fontFamily: 'Kanit',
    fontWeight: FontWeight.w500,
  ),
);

//AppBarTextStyle
TextStyle appBarTextStyle=GoogleFonts.kanit(
  textStyle: const TextStyle(
    color: kAppBarTextAndArrowColor,
    fontSize: 18,
    fontFamily: 'Kanit',
    fontWeight: FontWeight.w600,
  ),
);