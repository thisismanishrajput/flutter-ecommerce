import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CustomTextStyle extends TextStyle {
  static TextStyle customText(BuildContext context,double? size,Color? color) {
    return GoogleFonts.notoSans(
        fontSize: size ?? 15,
        color: color ?? primaryColor
    );
  }
  static TextStyle sectorTextStyle() {
    return GoogleFonts.notoSans(
        fontSize: 12,
        color:  primaryColor
    );
  }

  static TextStyle profileText() {
    return GoogleFonts.notoSans(
        fontSize: 16,
        color: Colors.black54
    );
  }
  static toastMessage(size) => TextStyle(
      color: Colors.black,
      fontSize: size,
      fontFamily: "Arial"
  );

  static minimum(size) => GoogleFonts.notoSans(
    color: Colors.white,
    fontSize: size * .03,
  );
  static hint(size) => GoogleFonts.notoSans(
    color: Color(0xffCCCCCC),
    fontSize: size * .04,
    fontWeight: FontWeight.w500,
  );

  static fill(size) => GoogleFonts.notoSans(
    color: Color(0xff003865),
    fontSize: size * .04,
    fontWeight: FontWeight.w500,
  );

  static TextStyle profileForm(size) => GoogleFonts.notoSans(
    color: Color(0xFF3F3F3F),
    fontWeight: FontWeight.w500,
    fontSize: size * .03,
  );


  static TextStyle heading17(size) => GoogleFonts.notoSans(
    color: Color(0xFF3F3F3F),
    fontWeight: FontWeight.w500,
    fontSize: size * .03,
  );

  static passwordInstructions(size) => GoogleFonts.notoSans(
      color: Color(0xFFCCCCCC),
      fontWeight: FontWeight.w500,
      fontSize: 12
  );
}