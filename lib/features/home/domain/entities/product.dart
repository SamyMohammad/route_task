import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final num? id;
  final String? title;
  final String? description;
  final num? price;
  final num? discountPercentage;
  final num? rating;
  final num? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;
  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.brand,
    required this.category,
    required this.discountPercentage,
    required this.images,
    required this.rating,
    required this.stock,
    required this.thumbnail,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        discountPercentage,
        rating,
        stock,
        brand,
        category,
        thumbnail,
        images,
      ];
}
