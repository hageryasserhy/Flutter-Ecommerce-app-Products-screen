import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:route_flutter_event_task/viewModel/products_state.dart';
import '../model/product_model.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  static ProductsCubit get(context)=>BlocProvider.of(context);

  List<ProductModel>? productModel;
  Future getAllProducts() async{
    emit(GetAllProductsLoadingState());
    final dio = Dio(
        BaseOptions(
            baseUrl: 'https://dummyjson.com/'
        )
    );
    final response = await dio.get('products',);
    if(response.statusCode==200)
    {
      productModel=List<ProductModel>.from((response.data['products'] as List).map((e) => ProductModel.fromJson(e)));
      emit(GetProductsSuccessState());
    }
    else
    {
      emit(GetProductsErrorState(error: ''));
    }
  }
}
