import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Company/company_master_screen.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Master/group_master_scren.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Master/item_master_screen.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Master/party_master_screen.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Master/product_master_screen.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Transection/other_purchase_screen.dart';
import 'package:prachi_desktop_app/utils/colors.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> isExpanded = [];

  List menuList = [
    {
      'mainmenu': "Company",
      'submenu': [
        {'name': "Company"},
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
    },
    {
      'mainmenu': "Master",
      'submenu': [
        {'name': "Party"},
        {'name': "Product"},
        {'name': "Group"},
        {'name': "Item"},
        {'name': "Tax"},
        {'name': "Party Opening"},
      ],
    },
    {
      'mainmenu': "Transection",
      'submenu': [
        {'name': "Purchase"},
        {'name': "Other Purchase"},
        {'name': "Tag Cancel"},
        {'name': "Wh Sales"},
        {'name': "Sales Order"},
        {'name': "Delivery Challange"},
        {'name': "Sales"},
        {'name': "Sales Return"},
        {'name': "Approval Issue"},
        {'name': "Approval Return"},
        {'name': "Rate Cut"},
        {'name': "Old Item Sales"},
        {'name': "Delivery Challange"},
        {'name': "Sales"},
        {'name': "Sales Return"},
        {'name': "Approval Issue"},
        {'name': "Approval Return"},
        {'name': "Rate Cut"},
        {'name': "Old Item Sales"},
      ],
    },
    {
      'mainmenu': "Other",
      'submenu': [
        {'name': "Only tag Entry"},
        {'name': "Tag Print"},
        {'name': "Stock Adjust"},
        {'name': "Order Cancel"},
        {'name': "Card Adjust"},
        {'name': "Physical Stock"},
        {'name': "Phone call"},
        {'name': "Tagwt Change"},
        {'name': "Consignment Rec"},
        {'name': "Consignment Issue"},
        {'name': "Consignment Purchase"},
        {'name': "Depreciation"},
        {'name': "Bank Reconcile"},
        {'name': "Fine JV Entry"},
        {'name': "Quotation Print"},
        {'name': "Counter Transfer"},
        {'name': "Service InCome"},
        {'name': "Tag Transfer"},
        {'name': "Labour Update"},
      ],
    },
    {
      'mainmenu': "Karigar",
      'submenu': [
        {'name': "Issue item"},
        {'name': "Design Issue"},
        {'name': "Receipt"},
        {'name': "Tag Wise Received"},
        {'name': "Reparing Rec"},
        {'name': "Karigar Issue"},
        {'name': "Karigar Rec"},
        {'name': "Reparing Delivery"},
        {'name': "Customer Gold Rec"},
        {'name': "Karigar Issue Gold"},
        {'name': "Karigar Rec Orna"},
        {'name': "Cust Orna Delivery"},
        {'name': "karigar item Return"},
        {'name': "Issue/Receipt"},
      ],
    },
    {
      'mainmenu': "Scheme",
      'submenu': [],
    },
    {
      'mainmenu': "Dhiran",
      'submenu': [],
    },
    {
      'mainmenu': "Reports",
      'submenu': [
        {'name': "Ledger"},
        {'name': "Time Wise"},
        {'name': "Item Stock"},
        {'name': "Tag Stock"},
        {'name': "Tag other Detail"},
        {'name': "Tag image Detail"},
        {'name': "Diamond Report"},
        {'name': "Cash Book"},
        {'name': "Bank Book"},
        {'name': "Sales order"},
        {'name': "Sales"},
        {'name': "Purchase"},
        {'name': "Party Wise Os"},
        {'name': "Other Reports"},
        {'name': "Final Reports"},
        {'name': "GST Reports"},
        {'name': "Stock Value"},
        {'name': "Vat Reports"},
        {'name': "Address Print"},
        {'name': "Delete Entry"},
      ],
    },
    {
      'mainmenu': "Daily Works",
      'submenu': [],
    },
    {
      'mainmenu': "Tools",
      'submenu': [],
    },
    {
      'mainmenu': "Exit",
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
    },
  ];
  @override
  void initState() {
    isExpanded = List<bool>.filled(menuList.length, false);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String selectedName = '';
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: appColors.skyBlueColor,
                      border: Border(
                          right: BorderSide(
                              color: appColors.blueColor, width: 4))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (int i = 0; i < menuList.length; i++)
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    // Toggle expansion only if subMenu is not empty
                                    if (menuList[i]['submenu'].isNotEmpty) {
                                      isExpanded[i] = !isExpanded[i];
                                    }
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: appColors.blueColor,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.w, vertical: 5),
                                  child: Center(
                                    child: customText(
                                        text: menuList[i]['mainmenu'],
                                        style: TextStyle(
                                            color: appColors.whiteColor,
                                            fontSize: 20)),
                                  ),
                                ),
                              ),
                              if (isExpanded[i])
                                for (int j = 0;
                                    j < menuList[i]['submenu'].length;
                                    j++)
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedName =
                                            menuList[i]['submenu'][j]['name'];
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.w, vertical: 3),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      width: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: selectedName ==
                                                menuList[i]['submenu'][j]
                                                    ['name']
                                            ? appColors.blueColor
                                            : Colors.transparent,
                                        border: Border.all(
                                          color: selectedName ==
                                                  menuList[i]['submenu'][j]
                                                      ['name']
                                              ? Colors.transparent
                                              : appColors.blueColor,
                                        ),
                                      ),
                                      child: Center(
                                        child: customText(
                                            text: menuList[i]['submenu'][j]
                                                ['name'],
                                            style: TextStyle(
                                                color: selectedName ==
                                                        menuList[i]['submenu']
                                                            [j]['name']
                                                    ? appColors.whiteColor
                                                    : appColors.blueColor,
                                                fontSize: 18)),
                                      ),
                                    ),
                                  ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
                selectedName == ''
                    ? Container()
                    : Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.w, vertical: 1.h),
                              decoration: BoxDecoration(
                                  color: appColors.lightskyColor,
                                  border: Border(
                                      bottom: BorderSide(
                                          color: appColors.blueColor,
                                          width: 2))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  customText(
                                    textAlign: TextAlign.start,
                                    text: "${selectedName} Master",
                                    style: TextStyle(
                                        color: appColors.blueColor,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ],
                              ),
                            ),
                            selectedName == 'Company' ||
                                    selectedName == 'Year Create' ||
                                    selectedName == 'Balance Transfer' ||
                                    selectedName == 'Account Group' ||
                                    selectedName == 'User Create' ||
                                    selectedName == 'User Rights' ||
                                    selectedName == 'Settings' ||
                                    selectedName == 'Books' ||
                                    selectedName == 'Data refresh' ||
                                    selectedName == 'Data Backup'
                                ? const CompanyMasterScreen()
                                : selectedName == 'Party'
                                    ? const PartyMasterScreen()
                                    : selectedName == 'Product'
                                        ? const ProductMasterScreen()
                                        : selectedName == 'Group'
                                            ? const GroupMasterScren()
                                            : selectedName == 'Item'
                                                ? const ItemMasterScreen()
                                                : selectedName ==
                                                        'Other Purchase'
                                                    ? const OtherPurchaseScreen()
                                                    : Container()
                          ],
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
