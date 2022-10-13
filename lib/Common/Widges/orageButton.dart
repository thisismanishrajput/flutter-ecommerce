import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Utils/colors.dart';

import 'constraints.dart';


class OrangeBtn extends StatelessWidget {
  const OrangeBtn({
    Key? key,
    required this.title,
    required this.press,
    this.width = 150,
    this.height = 38,
    this.color = btnColor,
    this.isBgWhite = false,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final double? width, height;
  final Color? color;
  final bool? isBgWhite;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(

        width: width,
        height: height,
        decoration:  BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            title,
            style: heading17.copyWith(
              fontSize: 15,
              decoration: color == Colors.transparent
                  ? TextDecoration.underline
                  : TextDecoration.none,
              color: (color == Colors.transparent)
                  ? isBgWhite!
                  ? searchHintColor
                  : Colors.white
                  : primaryColor,
              fontWeight: color == Colors.transparent
                  ? FontWeight.normal
                  : FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}