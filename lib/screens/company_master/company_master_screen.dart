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
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
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
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.w),
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
                  flex: 1, // Adjust flex as per your layout
                  child: SizedBox(
                    width: 150, // Add a width constraint
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
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
            color: appColors.blueColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: customText(
                    textAlign: TextAlign.start,
                    text: "08-04-2024 Monday",
                    style: TextStyle(
                        color: appColors.whiteColor,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
