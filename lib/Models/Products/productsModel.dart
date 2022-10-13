// To parse this JSON data, do
//
//     final moviesList = moviesListFromJson(jsonString);

import 'dart:convert';

ProductModel moviesListFromJson(String str) => ProductModel.fromJson(json.decode(str));

String moviesListToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.status,
    required this.message,
    this.data,
  });

  int status;
  String message;
  List<ProductDetails>? data;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    status: json["status"],
    message: json["message"],
    data: List<ProductDetails>.from(json["data"].map((x) => ProductDetails.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class ProductDetails {
  ProductDetails({
    this.productName,
    this.productDesc,
    this.image,
    this.productPrice,
  });

  String? productName;
  String? productDesc;
  String? image;
  String? productPrice;

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
    productName: json["product_name"],
    productDesc: json["product_desc"],
    image: json["image"],
    productPrice: json["product_price"],
  );

  Map<String, dynamic> toJson() => {
    "product_name": productName,
    "product_desc": productDesc,
    "image": image,
    "product_price": productPrice,
  };
}
