
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Widges/appBar.dart';
import 'package:flutter_ecommerce/Screens/allProducts.dart';

import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../Common/Utils/colors.dart';
import '../Providers/ProductsProvider/productProvider.dart';

class ProductHomeScreen extends StatefulWidget {
  const ProductHomeScreen({Key? key}) : super(key: key);


  @override
  _ProductHomeScreenState createState() => _ProductHomeScreenState();
}

class _ProductHomeScreenState extends State<ProductHomeScreen>
    with TickerProviderStateMixin {
  
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
fetchProduct();
    });
    super.initState();

  }
  fetchProduct(){
    Provider.of<ProductHomeProvider>(context,listen: false).getAllProducts(context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: bgLightColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBarMethod.appBarMethod(pageName: '', context: context),
      body: SafeArea(
        child: Consumer<ProductHomeProvider>(
            builder: (context, data, child) {
              return ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20),
                        child: allForums(context,
                            value: data),
                      ),
                    ],
                  ),

                ],
              );
            },)
      ),
    );
  }


}