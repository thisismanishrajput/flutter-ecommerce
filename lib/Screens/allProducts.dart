import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Widges/shimmer.dart';
import 'package:flutter_ecommerce/Models/Products/productsModel.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:shimmer/shimmer.dart';

import '../Providers/ProductsProvider/productProvider.dart';
import 'ProducWithImage.dart';





Widget allForums(
    BuildContext context, {
      required ProductHomeProvider value,

    }) {
  List<ProductDetails>? data;
  var isLoading;


    data = value.productList;
    isLoading = value.isProductLoading;


  if (isLoading) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: true,
      child: Column(
        children: [for (int i = 0; i < 2; i++) shimmerPostCard(context, true)],
      ),
    );
  } else {
    if (data == null || data.isEmpty) {
      return Text("No Thread Yet!");
    } else {
      return AnimationLimiter(
        child: ListView.builder(
          itemCount: data.length,
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            ProductDetails post = data![index];
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Material(
                    type: MaterialType.transparency,
                    child:ProductCard(
                      thread: post,
                      isTapDisable: true,
                      isReadmoreRemove: false,
                      isLikesCommentsContainerRemove: false, postIndex: index,
                   
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }
}

