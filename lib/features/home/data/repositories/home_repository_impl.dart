import 'package:dartz/dartz.dart';
import 'package:route_task/core/errors/failure.dart';
import 'package:route_task/core/utils/strings_manager.dart';

import '../../domain/repositories/base_home_repository.dart';
import '../data_sources/home_data_source.dart';
import '../models/products_model.dart';

class HomeRepositoryImpl implements BaseHomeRepository {
  final BaseHomeRemoteDataSource baseHomeRemoteDataSource;

  // final BehaviorSubject<User?> _userSubject = BehaviorSubject();
  HomeRepositoryImpl({
    required this.baseHomeRemoteDataSource,
  });

  @override
  Future<Either<Failure, ProductsDetailsModel>> getProducts() async {
    try {
      final response = await baseHomeRemoteDataSource.getProducts();

      if (response.products != null) {
        // success
        // return either right
        // return data

        return Right(response);
      } else {
        // failure --return business error
        // return either left
        return const Left(ServerFailure(AppStrings.badRequestError));
      }
    } catch (error) {
      return const Left(ServerFailure(AppStrings.defaultError));
    }
  }
}
