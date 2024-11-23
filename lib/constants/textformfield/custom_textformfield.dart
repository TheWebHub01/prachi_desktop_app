import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

TextFormField customTextformfield(
    String labelText, TextEditingController? controller, bool active) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        suffixIcon: active
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "assets/svg/eye-off.svg",
                  height: 15,
                  width: 15,
                  fit: BoxFit.cover,
                ),
              )
            : Container(
                height: 15,
                width: 15,
              ),
        labelText: labelText,
        labelStyle: TextStyle(color: appColors.textGreyColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.greyColor),
          borderRadius: BorderRadius.circular(2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.greyColor),
          borderRadius: BorderRadius.circular(2),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.greyColor),
          borderRadius: BorderRadius.circular(2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.greyColor),
          borderRadius: BorderRadius.circular(2),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: appColors.greyColor),
          borderRadius: BorderRadius.circular(2),
        )),
  );
}

SizedBox customTextfield(TextEditingController? controller, String labelText) {
  return SizedBox(
    height: 35,
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(8), // Added this

          labelText: labelText,
          labelStyle: TextStyle(color: appColors.textGreyColor),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appColors.blueColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appColors.blueColor),
            borderRadius: BorderRadius.circular(5),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appColors.blueColor),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appColors.blueColor),
            borderRadius: BorderRadius.circular(5),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: appColors.blueColor),
            borderRadius: BorderRadius.circular(5),
          )),
    ),
  );
}
