import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Models/Products/productsModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:preload_page_view/preload_page_view.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../Common/Widges/shimmer.dart';


class ProductCard extends StatefulWidget {
  const ProductCard(
      {Key? key,
        required this.thread,
        this.isTapDisable = false,
        this.isReadmoreRemove = false,
        required this.postIndex,
        this.isLikesCommentsContainerRemove = false,
         this.appUserID})
      : super(key: key);
  final ProductDetails thread;
  final int postIndex;
  final String? appUserID;
  final bool? isTapDisable, isReadmoreRemove, isLikesCommentsContainerRemove;

  @override
  _ProductCard createState() => _ProductCard();
}

class _ProductCard extends State<ProductCard> {
  final PreloadPageController _pageController = PreloadPageController();
  bool isReportVisible = false;

  int currentPage = 1;
  bool _showTranslated = false;
  String? _titleTranslatedText;


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              openPost();
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // post caption and description
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(
                                  8,
                                ),
                                child: _showTranslated
                                    ? Text(
                                  _titleTranslatedText!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.08,
                                  ),
                                )
                                    : Text(
                                  widget.thread.productName!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.notoSans(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.08,
                                  ),
                                )),
                          ],
                        ),



                        // post image container
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              AspectRatio(
                                aspectRatio: 3 / 1,
                                child: PreloadPageView.builder(
                                  controller: _pageController,
                                  itemCount:1,
                                  preloadPagesCount:1,
                                  physics:
                                  const AlwaysScrollableScrollPhysics(),
                                  onPageChanged: (page) {
                                    setState(
                                          () {
                                        currentPage = page + 1;
                                      },
                                    );
                                  },
                                  itemBuilder: (context, index) {
                                    return PinchZoomImage(
                                      image: CachedNetworkImage(
                                        imageUrl: widget.thread.image!,
                                        imageBuilder:
                                            (context, imageProvider) =>
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(5.0),
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                        placeholder: (context, url) =>
                                            Shimmer.fromColors(
                                                baseColor: Colors.grey[300]!,
                                                highlightColor:
                                                Colors.grey[100]!,
                                                enabled: true,
                                                child: loadingImageShimmer(
                                                    context)),
                                        errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                      ),
                                      zoomedBackgroundColor:
                                      Color.fromRGBO(240, 240, 240, 1.0),
                                      hideStatusBarWhileZooming: true,
                                    );
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }

  void openPost() {
    {
      // Navigator.of(context, rootNavigator: true).push(
      //   FadePageRoute(
      //     fullscreenDialog: true,
      //     builder: (context) {
      //       return ViewForumTemp(
      //         thread: widget.thread,
      //         appUserID: widget.appUserID,
      //         postIndex: widget.postIndex,
      //         screenType: widget.screenType,
      //       );
      //     },
      //   ),
      // );
    }
  }
}