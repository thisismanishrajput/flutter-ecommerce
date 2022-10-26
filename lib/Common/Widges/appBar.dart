import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Screens/cartScreen.dart';
import 'package:flutter_ecommerce/Screens/userProfile.dart';

import 'package:provider/provider.dart';

import '../../API/API.dart';
import '../../animation/fade_page.dart';
import '../Utils/colors.dart';

class AppBarMethod {
  static PreferredSize appBarMethod({
    bool isBack = false,
    bool isNav = false,
    required String pageName,
    bool isNotificationPage = false,
    required BuildContext context,
  }) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Consumer<ConnectivityResult>(
        builder: (context, value, child) {
          return AppBar(
            backgroundColor:
                value != ConnectivityResult.none ? Colors.orange : Colors.black,
            centerTitle: true,
            elevation: 0,
            titleSpacing: 0,
            leadingWidth: 100,
            leading: Container(
                margin: EdgeInsets.only(
                    left: isBack ? 0 : 15, top: 5, bottom: 5, right: 20),
                child: Row(
                  children: [
                    if (isBack && !isNav)
                      IconButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    if (!isBack)
                      GestureDetector(
                        onTap: () async {
                          Navigator.of(context, rootNavigator: true).push(
                            FadePageRoute(
                                fullscreenDialog: true,
                                builder: (context) {
                                  return UserProfile();
                                }),
                          );
                        },
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: secondaryColor, width: 1),
                          ),
                          child: CircleAvatar(
                            radius: 30.0,
                            child: ClipOval(
                              child: Image.network(API.img),
                            ),
                            backgroundColor: Colors.blue.withOpacity(0.25),
                          ),
                        ),
                      )
                  ],
                )),
            title: Text(pageName.toUpperCase()),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context, rootNavigator: true).push(
                      FadePageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return CartScreen();
                          }),
                    );
                  },
                    child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
              )
            ],
          );
        },
      ),
    );
  }
}
