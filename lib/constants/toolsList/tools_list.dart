import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

List toolsList = [
  {
    'image': 'assets/svg/new.svg',
    'name': 'New',
  },
  {
    'image': 'assets/svg/print.svg',
    'name': 'PRINT',
  },
  {
    'image': 'assets/svg/save.svg',
    'name': 'SAVE',
  },
  {
    'image': 'assets/svg/cancel.svg',
    'name': 'CANCEL',
  },
  {
    'image': 'assets/svg/delete.svg',
    'name': 'DELETE',
  },
  {
    'image': 'assets/svg/exit.svg',
    'name': 'EXIT',
  },
];
Row toolsListWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      for (int i = 0; i < toolsList.length; i++)
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: appColors.blueColor, width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(toolsList[i]['image']),
              const SizedBox(
                height: 5,
              ),
              customText(
                  text: toolsList[i]['name'],
                  style: const TextStyle(
                    fontSize: 11,
                  ))
            ],
          ),
        )
    ],
  );
}
