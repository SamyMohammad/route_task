// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsDetailsModel _$ProductsDetailsModelFromJson(
        Map<String, dynamic> json) =>
    ProductsDetailsModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
      skip: json['skip'] as num?,
      limit: json['limit'] as num?,
    );

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as num?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: json['price'] as num?,
      discountPercentage: json['discountPercentage'] as num?,
      rating: json['rating'] as num?,
      stock: json['stock'] as num?,
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      thumbnail: json['thumbnail'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
