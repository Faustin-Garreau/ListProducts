import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:json_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

@freezed
class Products with _$Products {
  factory Products(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
  ) = _Products;
  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
