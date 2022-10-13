import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Utils/colors.dart';

Widget progressIndicator({Color? color, Color valueColor = primaryColor}) {
  if (Platform.isIOS) {
    return const CupertinoActivityIndicator();
  } else {
    return CircularProgressIndicator(
      color: color,
      valueColor: AlwaysStoppedAnimation<Color>(valueColor),
    );
  }
}