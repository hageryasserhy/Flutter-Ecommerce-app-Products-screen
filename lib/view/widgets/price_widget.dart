import 'package:flutter/cupertino.dart';
import '../theme/responsive_text.dart';
import '../theme/texts.dart';
class PriceWidget extends StatelessWidget {
  final double discountPercentage;
  final double price;
  const PriceWidget({super.key, required this.price,required this.discountPercentage,});

  @override
  Widget build(BuildContext context) {
    double afterDiscountPrice = price-(price*(discountPercentage/100));
    String afterDiscountPriceWithTwoFloutingPointInString = afterDiscountPrice.toStringAsFixed(2); // '2.35'
    double afterDiscountPriceWithTwoFloutingPointInDouble = double.parse(afterDiscountPriceWithTwoFloutingPointInString);
    return Expanded(
      child: Row(
        children: [
          Text('EGP $afterDiscountPriceWithTwoFloutingPointInDouble',
              textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
              style:priceAfterDisTextStyle
          ),
          Expanded(
            child: Text('$price EGP',
              overflow: TextOverflow.ellipsis,
              textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
              style: priceBeforeDisTextStyle,
              textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
