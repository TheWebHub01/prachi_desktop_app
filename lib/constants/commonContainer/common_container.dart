import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

Container commonContainer(String text) {
  return Container(
    width: 130,
    height: 35,
    padding: const EdgeInsets.symmetric(horizontal: 5),
    margin: const EdgeInsets.symmetric(horizontal: 25),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: appColors.blueColor),
    child: Center(
      child:
          customText(text: text, style: TextStyle(color: appColors.whiteColor)),
    ),
  );
}
