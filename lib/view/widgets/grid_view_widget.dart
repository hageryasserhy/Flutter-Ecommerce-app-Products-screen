import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../viewModel/products_cubit.dart';
import '../../viewModel/products_state.dart';
import 'Product_widget.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) =>ProductsCubit()..getAllProducts(),
      child: BlocConsumer<ProductsCubit, ProductsState>(
          builder: (context, state){
            var cubit = ProductsCubit.get(context);
            return cubit.productModel!=null?GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      childAspectRatio: (150 / 200),
                    ),
                    itemBuilder: (context, index) => Product(
                      apiPicture: cubit.productModel?[index]?.image??"",
                    title: cubit.productModel?[index]?.title??"",
                    desc:cubit.productModel?[index]?.desc??"",
                    price: cubit.productModel?[index]?.price??0,
                    discountPercentage: cubit.productModel?[index]?.discountPercentage??0,
                    rating: cubit.productModel?[index]?.rating??0,),
                    itemCount: cubit.productModel?.length??0,
            ):const Center(child: CircularProgressIndicator()
            );
            },
          listener: (context, state){},
      ),
    );
  }
}