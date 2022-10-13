import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Utils/colors.dart';

Widget shimmerPostCard(BuildContext context,bool isForum) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15.0, bottom: 2),
            height: 25,
            width: 45,
            color: Colors.transparent,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
            ),
          ),
          const Icon(
            Icons.more_horiz,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
      AspectRatio(
        aspectRatio:isForum? 4 / 3:1/1,
        child: Container(
          color: Colors.white,
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0),
      ),
      Container(
        width: 100,
        height: 8.0,
        color: Colors.white,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
      ),
      Container(
        width: double.infinity,
        height: 8.0,
        color: Colors.white,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
      ),
      Container(
        width: double.infinity,
        height: 8.0,
        color: Colors.white,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
      ),
    ],
  );
}
Widget loadingImageShimmer(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,

          ),
        ),
      ],
    ),
  );
}
Widget loadingImageShimmer1(BuildContext context,double height,double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: bgLightColor,
        borderRadius: BorderRadius.all(Radius.circular(10))),


  );
}


Widget shimmerLanguageCard(BuildContext context,bool isForum) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * .86,
          height: 40,
          decoration: const BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
      ),
    ],
  );
}