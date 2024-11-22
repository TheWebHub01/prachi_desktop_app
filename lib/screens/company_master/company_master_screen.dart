import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';
import 'package:sizer/sizer.dart';

class CompanyMasterScreen extends StatefulWidget {
  const CompanyMasterScreen({super.key});

  @override
  State<CompanyMasterScreen> createState() => _CompanyMasterScreenState();
}

class _CompanyMasterScreenState extends State<CompanyMasterScreen> {
  List memuList = [
    {
      'mainmenu': "Company",
      'submenu': [
        {'name': "Year Create"},
        {'name': "Balance Transfer"},
        {'name': "Account Group"},
        {'name': "User Create"},
        {'name': "User Rights"},
        {'name': "Settings"},
        {'name': "Books"},
        {'name': "Data refresh"},
        {'name': "Data Backup"},
      ],
    }
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
            color: appColors.blueColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: appColors.whiteColor),
                      shape: BoxShape.circle,
                      gradient: appColors.myLinearGradient),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: customText(
                    textAlign: TextAlign.start,
                    text:
                        "01  - PRACHI JEWELLERS - 2023-2024   -   ABC   - 07HM765R20  -  [Company]",
                    style: TextStyle(
                        color: appColors.whiteColor,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
            color: appColors.whiteColor,
            child: Row(
              children: [
                Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                      border: Border.all(color: appColors.skyBlueColor),
                      shape: BoxShape.circle,
                      gradient: appColors.myLinearGradient),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  child: customText(
                    textAlign: TextAlign.start,
                    text: "Datacare - 9904469007 - Whatsapp No",
                    style: TextStyle(
                        color: appColors.blackColor,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 150,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "Open Window",
                      style: TextStyle(
                          color: appColors.blackColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 150,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "GST No Update",
                      style: TextStyle(
                          color: appColors.blackColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 150,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "GST Report",
                      style: TextStyle(
                        color: appColors.blackColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: customText(
                    textAlign: TextAlign.start,
                    text: "Exit Software",
                    style: TextStyle(
                        color: appColors.blackColor,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
            color: appColors.blueColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    width: 200,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "08-04-2024 Monday",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "ACC",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "ADD",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "OPP",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "ORD",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "SAL",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "PRC",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "CUT",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "OLD",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "KIS",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "KRC",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "REC",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "PAY",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "BRC",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "BPY",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "MEM",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "RAT",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "PRN",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "BKP",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    width: 100,
                    child: customText(
                      textAlign: TextAlign.start,
                      text: "REM",
                      style: TextStyle(
                          color: appColors.whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: appColors.skyBlueColor,
                border: Border.all(color: appColors.blueColor),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: appColors.blueColor,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.w, vertical: 10),
                    child: customText(
                        text: "Company",
                        style: TextStyle(
                            color: appColors.whiteColor, fontSize: 20)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
