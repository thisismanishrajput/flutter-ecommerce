import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Widges/appBar.dart';
import 'package:flutter_ecommerce/Common/Widges/customToast.dart';
import 'package:flutter_ecommerce/Common/Widges/orageButton.dart';
import 'package:google_fonts/google_fonts.dart';

import '../API/API.dart';
import '../Common/Utils/TextStyle.dart';
import '../Common/Utils/colors.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late double deviceHeight;
  double? deviceWidth;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod.appBarMethod(pageName: "Profile", context: context,isBack: true),
      body:Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 70,
                backgroundColor: bgLightColor,
                child: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 65,
                    backgroundColor: bgLightColor,
                    child: CircleAvatar(
                      radius: 55,
                      child: ClipOval(
                        child: Image.network(API.img),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          _textField(
              fieldName:'Name',
              child: Text("Manish Rajput",
                style: CustomTextStyle.customText(
                    context,
                    16,
                    profileFieldColor)
                    .copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7),
              )),
          _textField(
              fieldName:'Phone',
              child: Text("6200******",
                style: CustomTextStyle.customText(
                    context,
                    16,
                    profileFieldColor)
                    .copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7),
              )),
          _textField(
              fieldName:'Email',
              child: Text("thisismanishrajput@gmail.com",overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.customText(
                    context,
                    16,
                    profileFieldColor)
                    .copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7),
              )),

          _textField(
              fieldName:'Address',
              child: Text("Chapra, Bihar India",overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.customText(
                    context,
                    16,
                    profileFieldColor)
                    .copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7),
              )),
          SizedBox(height: 80),
          GestureDetector(
            onTap: (){
              customToast(context, title: "Sign Out Successfully");
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Center(
                  child:   Text(
                    "Sign Out",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),),
            ),
          ),

        ],
      )
    );
  }

  Widget _textField({required String fieldName, Widget? child}) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(
            top: deviceWidth! * .01, bottom: deviceWidth! * .02),
        height: 50,
        width: deviceWidth! * .9,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          children: <Widget>[
            // Heading Container
            Container(
              padding: EdgeInsets.only(left: deviceWidth! * .05),
              height: 50,
              width: deviceWidth! * .35,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    fieldName,
                    style: CustomTextStyle.customText(context, 18, Colors.black)
                        .copyWith(fontWeight: FontWeight.w600),
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: deviceWidth! * .05),
              height: 50,
              width: deviceWidth! * .55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Align(alignment: Alignment.centerLeft, child: child),
            ),
          ],
        ),
      ),
    );
  }

}
