import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';




class CustomTextStyle extends TextStyle {

  static toastMessage(size) => TextStyle(
      color: Colors.black,
      fontSize: size,
      fontFamily: "Arial"
  );

  static minimum(size) => TextStyle(
    color: Colors.white,
    fontSize: size * .03,
  );
  static hint(size) => TextStyle(
    color: Color(0xffCCCCCC),
    fontSize: size * .04,
    fontWeight: FontWeight.w500,
  );

  static fill(size) => TextStyle(
    color: Color(0xff003865),
    fontSize: size * .04,
    fontWeight: FontWeight.w500,
  );

  static TextStyle profileForm(size) => TextStyle(
    color: Color(0xFF3F3F3F),
    fontWeight: FontWeight.w500,
    fontSize: size * .03,
  );

  static passwordInstructions(size) => TextStyle(
      color: Color(0xFFCCCCCC),
      fontWeight: FontWeight.w500,
      fontSize: 12
  );


  static navBar(size) => GoogleFonts.workSans(
    color: secondaryColor,
    fontSize: size * .025,
    fontWeight: FontWeight.w600,
  );

  //MY BOOKS SCREEN
  static current(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .045,
    fontWeight: FontWeight.bold,
  );

  static bookName(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .03,
    fontWeight: FontWeight.w500,
  );

  static seeAll(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .03,
    fontWeight: FontWeight.w500,
  );

  //LOGIN
  static welcome(size) => GoogleFonts.workSans(
    color: Color(0xffFFC72C),
    fontSize: size * .06,
    fontWeight: FontWeight.bold,
  );

  static or(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .03,
  );

  static dont(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .03,
    fontWeight: FontWeight.w500,
  );

  static signup(size) => GoogleFonts.workSans(
      color: primaryColor,
      fontSize: size * .032,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);



  static forgot(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .04,
    fontWeight: FontWeight.w600,
  );

  static loginButton(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .04,
    fontWeight: FontWeight.bold,
  );

  static loginIntro(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .05,
    fontWeight: FontWeight.bold,
  );

  static signupIntro(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .05,
    fontWeight: FontWeight.bold,
  );

  //BookScreen
  static table(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .045,
    fontWeight: FontWeight.bold,
  );

  static introduction(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .035,
    fontWeight: FontWeight.bold,
  );

  static subheading(size) => GoogleFonts.workSans(
    color: const Color(0xFFe7aa00),
    fontSize: size * .035,
    fontWeight: FontWeight.bold,
  );

  static read(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .04,
  );

  static bookTitleS(size) => GoogleFonts.workSans(
      color: Color(0xffFFFFFF),
      fontSize: size * .027,
      fontWeight: FontWeight.w600);

  //Details
  static your(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .06,
    fontWeight: FontWeight.bold,
  );

  static selected(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .035,
    fontWeight: FontWeight.bold,
  );

  static backToLogin(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .03,
    fontWeight: FontWeight.w600,
    decoration: TextDecoration.underline,
  );

  static TextStyle expand(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .035,
  );

  static agree(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .030,
  );

  static showBookName(size) => GoogleFonts.workSans(
    color: Color(0xFF3F3F3F),
    fontSize: size * 0.03,
    fontWeight: FontWeight.bold,
  );
  static authorName(size) => GoogleFonts.workSans(
    color: Color(0xFFFFC72C),
    fontSize: size * 0.034,
    fontWeight: FontWeight.bold,
  );
  static authorNameSeeMorePage(size) => GoogleFonts.workSans(
    color: Color(0xFF3F3F3F),
    fontSize: size * 0.022,
    fontWeight: FontWeight.bold,
  );
  static authorNameSearchPage(size) => GoogleFonts.workSans(
    color: Color(0xFF3F3F3F),
    fontSize: size * 0.026,
  );
  static hideBookName() => TextStyle(
    fontSize: 0,
  );

  //OTP
  static password(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .033,
  );

  static otp(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .04,
    fontWeight: FontWeight.w600,
  );

  static mobileOtp(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .03,
    fontWeight: FontWeight.bold,
  );

  static resend(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .03,
    fontWeight: FontWeight.w500,
  );

  //Featured
  static featured(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .055,
    fontWeight: FontWeight.bold,
  );

  static see(size) => GoogleFonts.workSans(
    color: Colors.grey,
    fontSize: size * .03,
  );

  //Profile
  static initials(size) => GoogleFonts.workSans(
      color: primaryColor,
      fontSize: size * .055,
      fontWeight: FontWeight.bold);

  static name(size) => GoogleFonts.workSans(
      color: primaryColor,
      fontSize: size * .055,
      fontWeight: FontWeight.bold);

  static email(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .04,
  );

  static profileItem(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .033,
  );

  static settings(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .03,
    fontWeight: FontWeight.bold,
  );

  static signout(size) => GoogleFonts.workSans(
      color: primaryColor,
      fontSize: size * .045,
      fontWeight: FontWeight.bold);

  static rights(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * 0.026,
  );

  static page(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .025,
  );

  static back(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontWeight: FontWeight.w300,
    fontSize: size * .045,
  );

  static highlightsText(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontWeight: FontWeight.w500,
    fontSize: size * .0275,
  );

  static highlightsBold(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontWeight: FontWeight.bold,
    fontSize: size * .0275,
  );

  static highlightsBlue(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: size * .0275,
  );

  static unstoppable(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: size * .035,
  );

  static TextStyle profileFormDefaultState(size) => GoogleFonts.workSans(
    color: Color(0xFF989898),
    fontWeight: FontWeight.w500,
    fontSize: size * .03,
  );

  static discard(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
    fontSize: size * .04,
  );

  static profileFormHint(size) => GoogleFonts.workSans(
    color: Color(0xffA3A1A4),
    fontWeight: FontWeight.w500,
    fontSize: size * .03,
  );

  static attachFile(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontWeight: FontWeight.w500,
    fontSize: size * .035,
  );

//MyBooks
  static load(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .04,
    fontWeight: FontWeight.w600,
  );
  static loadMoreWithoutButton(size) => GoogleFonts.workSans(
    color: primaryColor,
    letterSpacing: 0.8,
    fontSize: size * .04,
    fontWeight: FontWeight.w600,
  );

  static valid(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .025,
    fontWeight: FontWeight.w500,
  );

  //REDEEM
  static redeemSelected(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .05,
    fontWeight: FontWeight.bold,
  );

  static redeemUnselected(size) => GoogleFonts.workSans(
    color: Color(0xffA3A1A4),
    fontSize: size * .04,
    fontWeight: FontWeight.bold,
  );

  static digital(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .03,
  );

  static keyfill(size) => GoogleFonts.workSans(
    color: Color(0xff88A0B4),
    fontSize: size * .055,
    fontWeight: FontWeight.bold,
  );

  //NotificationDialog
  static noti(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .03,
  );

  //BottomSheet
  static bottomsheetTitle(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontWeight: FontWeight.bold,
    fontSize: size * .033,
  );

  static share(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .035,
  );

  //Wishlist
  static wishlistPrice(size) => GoogleFonts.workSans(
      color: Color(0xff3F3F3F),
      fontSize: size * .03,
      fontWeight: FontWeight.bold);

  static wishlistButton(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .03,
    fontWeight: FontWeight.w600,
  );

  //BUYNOW DIALOG
  static website(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .035,
    fontWeight: FontWeight.bold,
  );
  //CATALOGUE
  static education(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .04,
    fontWeight: FontWeight.bold,
  );

  static libraries(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .032,
    fontWeight: FontWeight.bold,
  );

  static filter(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .03,
    fontWeight: FontWeight.bold,
  );
  static checkoutButtonCartSheet(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size * .043,
    fontWeight: FontWeight.bold,
  );
  static numberCartPageCounter(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );

  static filterSheet(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .04,
    fontWeight: FontWeight.bold,
  );
  static bookNameCartSheet(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .027,
    fontWeight: FontWeight.w600,
  );
  static bookPriceCartSheet(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .027,
    fontWeight: FontWeight.bold,
  );
  static cartPageBottomSheet(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .04,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bottomSheetSelected(size) => GoogleFonts.workSans(
    color: Color(0xff3F3F3F),
    fontSize: size * .0325,
  );
  static TextStyle bottomSheetUnselected(size) => GoogleFonts.workSans(
    color: Color(0xFFBBBBBB),
    fontSize: size * .0325,
  );

  static bottomSheetU(size) => GoogleFonts.workSans(
    color: Color(0xffA3A1A4),
    fontSize: size * .0325,
  );

  static bookNameDetailsPage(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .02,
    fontWeight: FontWeight.w700,
  );

  //Search Book Screen
  static textFieldHintText(size) => GoogleFonts.workSans(
    color: Color(0xffA3A1A4),
    fontSize: size * 0.035,
  );

  //Book Tile
  static bookTileTitle(size) => GoogleFonts.workSans(
    fontSize: size * 0.029,
    fontWeight: FontWeight.w600,
  );

  static bookPrice(size) => GoogleFonts.workSans(
    fontSize: size * 0.03,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
  static bookPriceUnderList(size) => GoogleFonts.workSans(
    fontSize: size * 0.03,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
  static validTillUnderList(size) => GoogleFonts.workSans(
    fontSize: size * 0.02,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
  static bestSeller(size) => GoogleFonts.workSans(
    fontSize: size * 0.028,
    fontWeight: FontWeight.normal,
  );

  static takeTestButton(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .04,
    fontWeight: FontWeight.bold,
  );

  static catalog(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size * .055,
    fontWeight: FontWeight.bold,
  );

  static defaultActionText() => GoogleFonts.workSans(
    color: primaryColor,
    fontWeight: FontWeight.w600,
  );
  static noInternetTextStyle(double deviceWidth) => GoogleFonts.workSans(
    fontWeight: FontWeight.bold,
    color: primaryColor,
    fontSize: deviceWidth * 0.032,
  );

  static customAppbarWithCartText(double size) => GoogleFonts.workSans(
    color: Colors.white,
    fontSize: size * .030,
  );

  // TEXT SECTION

  static generalIsntruction(double size) => GoogleFonts.workSans(
    height: 1.8,
    color: Colors.grey,
    fontSize: size,
  );

  static instruction(double size) => GoogleFonts.workSans(
    height: 1.5,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: size,
  );

  static startBtn(size) => GoogleFonts.workSans(
    color: Color(0xffFFFFFF),
    fontSize: size,
    fontWeight: FontWeight.bold,
  );
  static submitBtn(size) => GoogleFonts.workSans(
    color: primaryColor,
    fontSize: size,
    fontWeight: FontWeight.w700,
  );
  static appbarTitleText(size) => GoogleFonts.workSans(
    color: secondaryColor,
    fontSize: size * 0.045,
    fontWeight: FontWeight.w500,
  );
  static bookOverview(double size) => GoogleFonts.workSans(
    color: Color(0xFF3F3F3F),
    fontSize: size * 0.03,
  );
  static TextStyle privacyPolicy(double size) => GoogleFonts.workSans(
    color: secondaryColor,
    fontSize: size * 0.023,
  );
  static TextStyle notificationTextStyle(double size) => GoogleFonts.workSans(
      color: Colors.black87, fontSize: size * 0.035, height: 1.5);

}