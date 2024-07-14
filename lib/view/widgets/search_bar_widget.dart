import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/texts.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  const SearchBarWidget.searchBarWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: searchBarHintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
                color: Color(ColorPalette.searchBar))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
                color: Color(ColorPalette.searchBar))),
        prefixIcon: Icon(CupertinoIcons.search,
          color: Color(ColorPalette.icons), size: 35,),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(color:Color(ColorPalette.searchBarFocusedBorder)),
        ),
      ),
      cursorColor: Color(ColorPalette.icons),
    );
  }
}
