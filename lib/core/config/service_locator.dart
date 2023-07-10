import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_task/features/home/data/repositories/home_repository_impl.dart';
import 'package:route_task/features/home/domain/repositories/base_home_repository.dart';
import 'package:route_task/features/home/domain/use_cases/get_products_use_case.dart';
import 'package:route_task/features/home/presentation/bloc/home_cubit.dart';

import '../../features/home/data/data_sources/app_service_client.dart';
import '../../features/home/data/data_sources/home_data_source.dart';
import '../../features/home/data/network/dio_factory.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  // dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());

  Dio dio = await instance<DioFactory>().getDio();
  //app service client
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  // remote data source
  instance.registerLazySingleton<BaseHomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(instance<AppServiceClient>()));

  // repository

  instance.registerLazySingleton<BaseHomeRepository>(
      () => HomeRepositoryImpl(baseHomeRemoteDataSource: instance()));
  instance.registerLazySingleton(() => GetProductsUseCase(instance()));

  instance.registerFactory(
    () => HomeCubit(getProductsUseCase: instance()),
  );
}
