import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_flutter_event_task/view/widgets/grid_view_widget.dart';
import '../theme/colors.dart';
import '../theme/images.dart';
import '../widgets/search_bar_widget.dart';

class ProductsScreen extends StatefulWidget {
  static const String productsScreenRoute='/';
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(ImagesRoute.routeLogo,width: 100,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    SearchBarWidget.searchBarWidget(hintText: 'What do you search for?'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    CupertinoIcons.cart, color: Color(ColorPalette.icons),
                    size: 35,),
                ),
              ],
            ),
            const GridViewWidget(),
          ],
        ),
      ),
    );
  }
}

