import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:route_flutter_event_task/view/theme/texts.dart';
import 'package:route_flutter_event_task/view/widgets/add_to_cart_widget.dart';
import 'package:route_flutter_event_task/view/widgets/favourite_widget.dart';
import 'package:route_flutter_event_task/view/widgets/price_widget.dart';
import '../theme/colors.dart';
import '../theme/responsive_text.dart';

class Product extends StatelessWidget {
  final String apiPicture;
  final String title;
  final String desc;
  final double discountPercentage;
  final double price;
  final double rating;
  const Product({super.key, required this.apiPicture,required this.title,required this.desc,required this.price,required this.discountPercentage,required this.rating});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(right: 10,left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      foregroundDecoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(ColorPalette.containerBorder).withOpacity(0.4),width: 2,),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.network(apiPicture,width: double.infinity,
                      errorBuilder: (context, error, stackTrace) =>const Icon(Icons.error_outline,color: Colors.red,) ,),
                    const FavouriteWidget(),
                  ],
                ),
              ),
              Expanded(child:
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: titleTextStyle,
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    ),
                    Text(desc,
                      overflow: TextOverflow.ellipsis,
                      style: descTextStyle,
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    ),
                    PriceWidget(discountPercentage:discountPercentage,price: price, ),
                    Row(
                      children: [
                        Text('Review ($rating)',
                            textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                            style:reviewTextStyle
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(CupertinoIcons.star_fill,color: Color(ColorPalette.ratingStar),),
                        ),
                        const Spacer(),
                        const AddToCartWidget(),
                      ],
                    ),
                  ],
                ),
              ),
              ),
            ],
      ),
    ) ;
  }
}
