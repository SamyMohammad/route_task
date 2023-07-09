// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
//
// final instance = GetIt.instance;
//
// Future<void> initAppModule() async {
//   // app module, its a module where we put all generic dependencies
//
//   // instance.registerLazySingleton<FlutterSecureStorage>(
//   //     () => const FlutterSecureStorage());
//
//   // app prefs instance
//   // instance
//   //     .registerLazySingleton<KeyValueStorage>(() => KeyValueStorage());
//
//   // network info
//   instance.registerLazySingleton<NetworkInfo>(
//       () => NetworkInfoImpl(InternetConnectionChecker()));
//
//   // dio factory
//   instance.registerLazySingleton<DioFactory>(() => DioFactory());
//
//   Dio dio = await instance<DioFactory>().getDio();
//   //app service client
//   instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
//
//   // remote data source
//   // instance.registerLazySingleton<RemoteDataSource>(
//   //     () => RemoteDataSourceImpl(instance<AppServiceClient>()));
//
//   // local data source
//   // instance.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());
//
//   // repository
//
//   instance.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(
//         networkInfo: instance(),
//         remoteDataSource: instance(),
//       ));
//
//   // instance.registerLazySingleton<UserSecureStorage>(() => UserSecureStorage());
//
//   instance.registerLazySingleton<RemoteDataSourceImpl>(
//       () => RemoteDataSourceImpl(instance()));
//
//   // instance.registerFactory(() => SignInCubit( instance()));
//   instance.registerFactory(
//     () => LoginCubit(
//       authRepo: instance(),
//     ),
//   );
// }
