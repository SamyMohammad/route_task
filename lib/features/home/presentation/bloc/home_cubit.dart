import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:route_task/core/use_case/base_usecase.dart';

import '../../domain/entities/products_details.dart';
import '../../domain/use_cases/get_products_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.getProductsUseCase}) : super(HomeInitial());
  final GetProductsUseCase getProductsUseCase;
  ProductsDetails? productsDetails;
  getProducts() async {
    emit(GetProductsLoadingState());
    final result = await getProductsUseCase.call(const NoParameters());
    result.fold(
        (failure) => emit(GetProductsFailureState(message: failure.message)),
        (result) {
      productsDetails = result;
      if (kDebugMode) {
        print(result.products?[0].title ?? '');
      }
      emit(GetProductsSuccessState(productsDetails: result));
    });
  }
}
