import 'package:equatable/equatable.dart';
import 'package:route_task/features/home/domain/entities/product.dart';

class ProductsDetails extends Equatable {
  final List<Product>? products;
  final num? total;
  final num? skip;
  final num? limit;

  const ProductsDetails({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        products,
        total,
        skip,
        limit,
      ];
}
