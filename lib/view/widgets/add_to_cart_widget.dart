import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';

class AddToCartWidget extends StatefulWidget {
  const AddToCartWidget({super.key});

  @override
  State<AddToCartWidget> createState() => _AddToCartWidgetState();
}

class _AddToCartWidgetState extends State<AddToCartWidget> {
  int addToCart=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color(ColorPalette.containerBorder),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        icon:Icon(Icons.add_rounded,color:Color(ColorPalette.addToCartIcon),size: 25),
        onPressed: () {
        addToCart++;
        if (kDebugMode) {
          print(addToCart);
        }
      },),
    );
  }
}
