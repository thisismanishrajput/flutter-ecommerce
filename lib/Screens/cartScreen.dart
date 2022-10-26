import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Widges/appBar.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod.appBarMethod(
        isBack: true,
          pageName: "Your Cart", context: context),
   body: Center(

     child:Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.asset("assets/empty-cart.png",width: 90,height: 90,),
         SizedBox(height: 10),
         Text("Empty Cart",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.w600),)
       ],
     ),
   ),
    );
  }
}
