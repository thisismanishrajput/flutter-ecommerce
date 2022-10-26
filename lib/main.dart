import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ecommerce/Common/Utils/connectivity.dart';
import 'package:flutter_ecommerce/Providers/ProductsProvider/productProvider.dart';
import 'package:flutter_ecommerce/Screens/homeScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<ConnectivityResult>(
            initialData: ConnectivityResult.none,
            create: (_) {
              return ConnectivityService().connectionStatusController.stream;
            }),
        ChangeNotifierProvider<ProductHomeProvider>(
            create: (_) => ProductHomeData()),
      ],
      child: MaterialApp(
    title: 'Glp Power',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primaryColor: Colors.white,
    ),
    home: ProductHomeScreen(),
    ));
  }
}