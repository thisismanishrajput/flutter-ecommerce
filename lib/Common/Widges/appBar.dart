// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:glp_power/Common/util/colors.dart';
// import 'package:glp_power/Providers/gelleryProvider/auth_provider.dart';
// import 'package:glp_power/Providers/notification/notification_provider.dart';
// import 'package:glp_power/Screens/Home/Notification/notificationScreen.dart';
// import 'package:glp_power/Screens/Home/Profile/profileself.dart';
// import 'package:glp_power/animation/fade_page_route.dart';
// import 'package:glp_power/helper/SharedPreferences.dart';
//
// import 'package:provider/provider.dart';
//
// import '../../API/API.dart';
//
// class AppBarMethod {
//   static PreferredSize appBarMethod({
//     bool isBack = false,
//     bool isNav = false,
//     required String appUserID,
//     required String pageName,
//     bool isNotificationPage = false,
//     required BuildContext context,
//   }) {
//     return PreferredSize(
//       preferredSize: const Size.fromHeight(kToolbarHeight),
//       child: Consumer<ConnectivityResult>(
//         builder: (context, value, child) {
//           return AppBar(
//             backgroundColor: value != ConnectivityResult.none
//                 ? appBarColor
//                 : const Color(0xDFFF2029),
//             centerTitle: true,
//             elevation: 0,
//             titleSpacing: 0,
//             leadingWidth: 100,
//             leading: Container(
//                 margin: EdgeInsets.only(
//                     left: isBack ? 0 : 15, top: 5, bottom: 5, right: 20),
//                 child: Row(
//                   children: [
//                     if (isBack && !isNav)
//                       IconButton(
//                         onPressed: () {
//                           Navigator.of(context, rootNavigator: true).pop();
//                         },
//                         icon: const Icon(
//                           Icons.arrow_back_ios,
//                           color: Colors.white,
//                           size: 18,
//                         ),
//                       ),
//                     if (!isBack)
//                       Consumer<Authorization>(
//                         builder: (BuildContext context, value, Widget? child) {
//                           return GestureDetector(
//                             onTap: () async {
//                               // print("From app bar ${appUserID}");
//                               final SharedPreferencesManager? manager =
//                               await SharedPreferencesManager.getInstance();
//                               final accessToken = manager!.getString(
//                                   SharedPreferencesManager.accessToken);
//                               final refreshToken = manager.getString(
//                                   SharedPreferencesManager.refreshToken);
//                               final refreshExpiry = manager.getString(
//                                   SharedPreferencesManager
//                                       .expiryTimeRefreshToken);
//
//                               print("accessToken : --- ${accessToken}");
//                               print("refreshToken : ----  ${refreshToken}");
//                               print("refreshExpiry : ---- ${refreshExpiry}");
//                               Navigator.of(context, rootNavigator: true).push(
//                                 FadePageRoute(
//                                     fullscreenDialog: true,
//                                     builder: (context) {
//                                       return ProfileSelf(
//                                         isNav: false,
//                                         // profile: value.profileData!,
//                                         // userID: appUserID,
//                                       );
//                                     }),
//                               );
//                             },
//                             child: Container(
//                               width: 24,
//                               height: 24,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border:
//                                 Border.all(color: secondaryColor, width: 1),
//                               ),
//                               child: CircleAvatar(
//                                 radius: 30.0,
//                                 child: ClipOval(
//                                   child: Image.network( API.getUserIMG(appUserID)),
//                                 ),
//                                 backgroundColor: Colors.blue.withOpacity(0.25),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                   ],
//                 )),
//             title:
//             Text(pageName == "FAQ's" ? pageName : pageName.toUpperCase()),
//             actions: [
//               if (!isNotificationPage)
//                 Consumer<NotificationProvider>(
//                   builder: (context, value, child) {
//                     return GestureDetector(
//                       onTap: () {
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) =>NotificationScreen(
//                         //         messageCount: value.notificationList!.unread!,
//                         //         appUserID: appUserID,
//                         //       ),
//                         //   ),
//                         // );
//                         Navigator.of(context, rootNavigator: true).push(
//                           MaterialPageRoute(
//                             builder: (_) => NotificationScreen(
//                               messageCount: value.notificationList!.unread!,
//                               appUserID: appUserID, shouldBack: true,
//                             ),
//                           ),
//                         );
//                       },
//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.only(right: 17.0),
//                           child: Stack(
//                             children: [
//                               Image.asset(
//                                 "assets/images/Group 67@3x.png",
//                                 width: 22,
//                                 height: 22,
//                               ),
//                               Positioned(
//                                 right: 0,
//                                 child: CircleAvatar(
//                                   radius: 5,
//                                   backgroundColor: value.notificationList !=
//                                       null &&
//                                       value.notificationList!.unread! > 0
//                                       ? btnColor
//                                       : Colors.transparent,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }