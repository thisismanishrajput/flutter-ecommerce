import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'dart:ui';

import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

import '../../API/api.dart';
import '../../Models/Products/productsModel.dart';

abstract class ProductHomeProvider extends ChangeNotifier {
  List<ProductDetails> get productList;
  bool get isProductLoading;




  Future<void> getAllProducts(BuildContext context);


  resetProducts(BuildContext context);

}

class ProductHomeData extends ChangeNotifier implements ProductHomeProvider {
  final Dio _dio = Dio();


  bool _iProductLoading = false;

  @override
  bool get isProductLoading => _iProductLoading;

  List<ProductDetails> _productList = [];


  @override
  List<ProductDetails> get productList => _productList;

  @override
  resetProducts(BuildContext context) {
      _productList.clear();

    notifyListeners();
  }

  addPostToList({required List<ProductDetails> list}) {
      _productList.addAll(list);
      _iProductLoading = false;
    notifyListeners();
  }


  @override
  Future<void> getAllProducts(BuildContext context) async {
    try {
     _iProductLoading = true;

      var response = await _dio.post(
        API.allProduct,
        options: Options(
          headers: {
            "Content-Type": "application/json"
          },
        ),
        // data: json.encode(data),
      );
      if (response.statusCode == 200) {
        print(response);
        addPostToList(
            list: ProductModel
                .fromJson(response.data)
                .data!);

        notifyListeners();
      }
    } on DioError {

    } finally {
      if (_iProductLoading) {
        _iProductLoading = false;
        notifyListeners();
      }
    }
  }

}