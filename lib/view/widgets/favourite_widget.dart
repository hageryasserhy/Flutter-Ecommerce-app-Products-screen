import 'package:flutter/material.dart';
import '../theme/colors.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  bool favourite=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child:IconButton(onPressed: ()
      {
        setState(() {
          favourite= !favourite;
        });
      },
        icon: Icon(favourite ? Icons.favorite : Icons.favorite_border,color: Color(ColorPalette.icons),size: 25),
      ),

    );
  }
}
