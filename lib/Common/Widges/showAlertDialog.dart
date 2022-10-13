import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Utils/TextStyle.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> showAlertDialog(
    BuildContext context, {
      required String title,
      required String content,
      required String defaultActionText,
      String? cancelActionText,
    }) {
  if (!Platform.isIOS) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          if (cancelActionText != null)
            TextButton(
              child: Text(
                cancelActionText,
                style: CustomTextStyle.toastMessage(13.0),
              ),
              onPressed: () => Navigator.of(context).pop(false),
            ),
          TextButton(
            child: Text(
              defaultActionText,
              style: CustomTextStyle.toastMessage(13.0),
            ),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );
  } else {
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          if (cancelActionText != null)
            CupertinoDialogAction(
              child: Text(cancelActionText),
              onPressed: () => Navigator.of(context).pop(false),
            ),
          CupertinoDialogAction(
            child: Text(defaultActionText),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );
  }
}

Future<dynamic> showAlertDialog1(
    BuildContext context, {
      String? cancelActionText,
    }) {
  if (!Platform.isIOS) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'TERMS AND CONDITIONS',
              style: GoogleFonts.notoSans(fontSize: 16),
            ),
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eligibility:',
                style: GoogleFonts.notoSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'You hereby represent that you are 18 years of age or above and are fully able and competent to understand and agree to the code of conduct set forth. The Platform Coordinators will verify your profile details and they reserve the right to refuse access to the platform/terminate your membership to the CONNECT platform, if you are below 18 years of age or otherwise incompetent to contract as per applicable law, if you do not follow the code of conduct.',
                style: GoogleFonts.notoSans(fontSize: 13),
              ),
              SizedBox(height: 5),
              Text(
                'User Account:',
                style: GoogleFonts.notoSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'To access and use the CONNECT platform, you will have to register with us by providing the required information. You are responsible for ensuring the accuracy of this information. Providing false or inaccurate information, using the platform for any unlawful activity or commercial use is grounds for immediate termination of your membership to the platform. ',
                style: GoogleFonts.notoSans(fontSize: 13),
              ),
              SizedBox(height: 5),
              Text(
                'Code of conduct:',
                style: GoogleFonts.notoSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                'The CONNECT app is created and managed jointly by Solidar Suisse, Pragya and British Institute of International and Comparative Law (BIICL). We do not encourage unwarranted behaviour that diminishes the value of global public conversation. We strive to ensure that all users can participate in conversations on the platform freely and safely. The following code of conduct applies to the use of website and the mobile application. ',
                style: GoogleFonts.notoSans(fontSize: 13),
              ),
              SizedBox(height: 5),
              Text(
                'Privacy policy: ',
                style: GoogleFonts.notoSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "We seek your personal information for internal bona fide purposes only. It is used for research and to personalise your experience on the CONNECT platform in terms of information and services. Only your Alias, country and sector would be visible to other users. No specific identifiable details will be available on the platform or anywhere else.Except for statutory requirements defined by different country laws or pursuant to requests by law enforcement or other government agencies, we will not share or disclose your personal information in any form.We reserve the right to monitor the content interactions between and among users of the platform and to remove any content we deem objectionable at our sole discretion.If you have any questions or concerns about these Terms and Conditions or have any other issues, please contact us at: info@glp-connect.org ",
                style: GoogleFonts.notoSans(fontSize: 13),
              ),
              SizedBox(height: 5),
              Text(
                'Disclaimer:',
                style: GoogleFonts.notoSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                """The content on this platform is for educative and informative purposes only. While we endeavour to keep the information up to date and correct, we make no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability with respect to the platform content or the information and related graphics on the platform for any purpose. 
Through this platform you will be able to access links to other websites owned and operated by third parties (newsfeed, events). If you use these links, you leave our platform. We have no control over the information provided by these websites and bear no responsibility for the accuracy of the content and the views expressed therein. 
Any content provided by you is your sole responsibility, including compliance with applicable laws, rules, and regulations. You are also solely responsible for your interactions with other users of the platform and any content you post. We are not liable for any damage or harm resulting from any posts by or interactions between users. 
Every effort is made to keep the platform up and running smoothly. We take no responsibility for, and will not be liable for, the website being temporarily unavailable due to technical issues beyond our control.

Your access to and use of this platform in any form is subject to the above-mentioned code of conduct and all applicable laws. By agreeing to the terms and conditions, you are deemed to have read, accepted and agreed to be bound by this disclaimer.""",
                style: GoogleFonts.notoSans(fontSize: 13),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          if (cancelActionText != null)
            TextButton(
              child: Text(
                cancelActionText,
                style: CustomTextStyle.toastMessage(13.0),
              ),
              onPressed: () => Navigator.of(context).pop(false),
            ),
        ],
      ),
    );
  } else {
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          'TERMS AND CONDITIONS',
          style: GoogleFonts.notoSans(fontSize: 16),
        ),
        content: Text(
          'You hereby represent that you are 18 years of age or above and are fully able and competent to understand and agree to the code of conduct set forth. The Platform Coordinators will verify your profile details and they reserve the right to refuse access to the platform/terminate your membership to the CONNECT platform, if you are below 18 years of age or otherwise incompetent to contract as per applicable law, if you do not follow the code of conduct.',
          style: GoogleFonts.notoSans(fontSize: 13),
        ),
        actions: <Widget>[
          if (cancelActionText != null)
            CupertinoDialogAction(
              child: Text(cancelActionText),
              onPressed: () => Navigator.of(context).pop(false),
            ),
        ],
      ),
    );
  }
}