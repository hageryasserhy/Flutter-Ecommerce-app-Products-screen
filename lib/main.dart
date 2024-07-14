import 'package:flutter/material.dart';
import 'package:route_flutter_event_task/view/screens/products_screen.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ProductsScreen.productsScreenRoute:(context)=>const ProductsScreen()
      },
    );
  }
}
