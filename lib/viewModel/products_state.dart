abstract class ProductsState {}

class ProductsInitial extends ProductsState {}
class GetProductsSuccessState extends ProductsState {}
class GetAllProductsLoadingState extends ProductsState {}
class GetProductsErrorState extends ProductsState {
  final String error;
  GetProductsErrorState({required this.error});
}

