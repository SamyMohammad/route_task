import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:route_task/core/config/url_constants.dart';
import 'package:route_task/features/home/data/models/products_model.dart';

part 'app_service_client.g.dart';

@RestApi(baseUrl: UrlConstants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET(UrlConstants.getProducts)
  Future<ProductsDetailsModel> getProducts();
}
