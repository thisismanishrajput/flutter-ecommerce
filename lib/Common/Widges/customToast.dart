import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

ToastFuture customToast(BuildContext context,
    {required String title,
      bool ignore = true,
      bool isError = false,
      int duration = 3}) {
  return showToastWidget(
    Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 50.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: isError ? Colors.redAccent : Colors.green,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    context: context,
    isIgnoring: ignore,
    position: StyledToastPosition.top,
    animation: StyledToastAnimation.slideFromTopFade,
    reverseAnimation: StyledToastAnimation.fade,
    animDuration: Duration(seconds: 1),
    duration: Duration(seconds: duration),
    curve: Curves.elasticOut,
    reverseCurve: Curves.linear,
  );
}