part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class GetProductsLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class GetProductsSuccessState extends HomeState {
  final ProductsDetails productsDetails;
  const GetProductsSuccessState({required this.productsDetails});
  @override
  List<Object> get props => [];
}

class GetProductsFailureState extends HomeState {
  final String? message;
  const GetProductsFailureState({this.message});
  @override
  List<Object> get props => [];
}
