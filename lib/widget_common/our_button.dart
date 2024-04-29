import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton(
    {onPress,
    color,
    textColor,
    String? title,
    Future<void> Function()? onpressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(12),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(3),
          ),
        ),
      ),
      onPressed: onPress,
      child: title?.text.color(textColor).fontFamily(bold).make());
}
