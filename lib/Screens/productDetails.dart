import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Common/Utils/colors.dart';
import 'package:flutter_ecommerce/Common/Widges/customToast.dart';
import 'package:flutter_ecommerce/Models/Products/productsModel.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../Common/Widges/shimmer.dart';

class ViewForumTemp extends StatefulWidget {
  final ProductDetails thread;
  final int postIndex;
  final bool? isTapDisable, isReadmoreRemove, isLikesCommentsContainerRemove;

  const ViewForumTemp(
      {Key? key,
      required this.thread,
      this.isTapDisable = false,
      this.isReadmoreRemove = false,
      this.isLikesCommentsContainerRemove = false,
      required this.postIndex})
      : super(key: key);

  @override
  State<ViewForumTemp> createState() => _ViewForumTempState();
}

class _ViewForumTempState extends State<ViewForumTemp> {
  String? nestCommentID;
  String? nestName;
  FocusNode commentFocusNode = new FocusNode();
  PreloadPageController _pageController = PreloadPageController();
  bool isReportVisible = false;
  int currentPage = 1;
  bool _showTranslated = false;
  String? _titleTranslatedText;
  String? _contentTranslatedText;
  List<String> listTags = [];

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  "${widget.thread.productName}",
                  style: GoogleFonts.openSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                Icon(Icons.shopping_cart,color: Colors.black54,)
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        AspectRatio(
                            aspectRatio: 5.0 / 4.0,
                            child: PinchZoomImage(
                              image: CachedNetworkImage(
                                imageUrl: widget.thread.image!,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0)),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) =>
                                    Shimmer.fromColors(
                                        baseColor: Colors.grey[300]!,
                                        highlightColor: Colors.grey[100]!,
                                        enabled: true,
                                        child: loadingImageShimmer1(context,
                                            deviceHeight * 0.35, deviceWidth)),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              zoomedBackgroundColor:
                                  const Color.fromRGBO(240, 240, 240, 1.0),
                              hideStatusBarWhileZooming: true,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            bottom: 5,
                            left: 10,
                            right: 10,
                          ),
                          child: Text(
                            widget.thread.productDesc!,
                            style: GoogleFonts.openSans(
                              fontSize: 15,
                              color: Colors.black87,
                              letterSpacing: 0.08,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 5,
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Price",
                          style: GoogleFonts.openSans(
                              fontSize: 20, color: Colors.black54,fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 10,),
                        Text("\$${widget.thread.productPrice}", style: GoogleFonts.openSans(
                            fontSize: 20, color: Colors.black,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  )
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom:
                        MediaQuery.of(context).size.height.toDouble() * 0.1),
                child: GestureDetector(
                  onTap: (){
                    customToast(context, title: "Item Added to Cart!");
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add Cart",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
