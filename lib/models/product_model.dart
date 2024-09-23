// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
    String productName;
    String productType;
    String price;
    String unit;

    Product({
        required this.productName,
        required this.productType,
        required this.price,
        required this.unit,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        productName: json["product_name"],
        productType: json["product_type"],
        price: json["price"],
        unit: json["unit"],
    );

    Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_type": productType,
        "price": price,
        "unit": unit,
    };
}