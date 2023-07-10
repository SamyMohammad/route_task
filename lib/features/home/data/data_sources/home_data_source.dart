import 'package:route_task/features/home/data/models/products_model.dart';

import 'app_service_client.dart';

abstract class BaseHomeRemoteDataSource {
  Future<ProductsDetailsModel> getProducts();
}

class HomeRemoteDataSourceImpl extends BaseHomeRemoteDataSource {
  final AppServiceClient _appServiceClient;

  HomeRemoteDataSourceImpl(this._appServiceClient);
  @override
  Future<ProductsDetailsModel> getProducts() async {
    return await _appServiceClient.getProducts();
  }
}
