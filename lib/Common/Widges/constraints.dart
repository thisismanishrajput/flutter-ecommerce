import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils/colors.dart';


TextStyle heading17 = GoogleFonts.notoSans(
  fontSize: 17,
  color: Colors.orangeAccent,
  fontWeight: FontWeight.bold,
);
TextStyle heading22 = GoogleFonts.notoSans(
  fontSize: 22,
  color: primaryColor,
);

bool validateTwitterId(String value) {
  String pattern = r"^[A-Za-z0-9_]{4,15}$";
  RegExp regExp = new RegExp(pattern);
  print("$value => ${regExp.hasMatch(value)}");
  return regExp.hasMatch(value);
}

bool validateInstaId(String value) {
  String pattern =
      r"^([A-Za-z0-9._](?:(?:[A-Za-z0-9._]|(?:\.(?!\.))){2,28}(?:[A-Za-z0-9._]))?)$";
  RegExp regExp = new RegExp(pattern);
  print("$value => ${regExp.hasMatch(value)}");
  return regExp.hasMatch(value);
}


