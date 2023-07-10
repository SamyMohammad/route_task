import 'package:dartz/dartz.dart';
import 'package:route_task/features/home/domain/entities/products_details.dart';

import '../../../../core/errors/failure.dart';

abstract class BaseHomeRepository {
  Future<Either<Failure, ProductsDetails>> getProducts();
}
