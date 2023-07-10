import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_case/base_usecase.dart';
import '../entities/products_details.dart';
import '../repositories/base_home_repository.dart';

class GetProductsUseCase extends BaseUseCase<ProductsDetails, NoParameters> {
  final BaseHomeRepository baseHomeRepository;

  GetProductsUseCase(this.baseHomeRepository);

  @override
  Future<Either<Failure, ProductsDetails>> call(NoParameters parameters) async {
    return await baseHomeRepository.getProducts();
  }
}
