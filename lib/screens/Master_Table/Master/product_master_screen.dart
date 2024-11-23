import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prachi_desktop_app/constants/commonContainer/common_container.dart';
import 'package:prachi_desktop_app/constants/textformfield/custom_textformfield.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class ProductMasterScreen extends StatefulWidget {
  const ProductMasterScreen({super.key});

  @override
  State<ProductMasterScreen> createState() => _ProductMasterScreenState();
}

class _ProductMasterScreenState extends State<ProductMasterScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: appColors.lightskyColor,
                      border: Border.all(color: appColors.blueColor)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 35,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appColors.blueColor),
                            child: Center(
                              child: customText(
                                  text: "CODE",
                                  style:
                                      TextStyle(color: appColors.whiteColor)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 35,
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appColors.whiteColor,
                                border: Border.all(color: appColors.blueColor),
                              ),
                              child: Center(
                                child: customText(
                                    text: "PARTY NAME",
                                    style:
                                        TextStyle(color: appColors.blueColor)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 35,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appColors.blueColor),
                            child: Center(
                              child: customText(
                                  text: "01",
                                  style:
                                      TextStyle(color: appColors.whiteColor)),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 35,
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appColors.whiteColor,
                                border: Border.all(color: appColors.blueColor),
                              ),
                              child: Center(
                                child: customText(
                                    text: "PRACHI JEWELLERS",
                                    style:
                                        TextStyle(color: appColors.blueColor)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            )),
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  for (int i = 0;
                      i < CompanyMaster().companyMasterList.length;
                      i++)
                    Row(
                      children: [
                        commonContainer(
                            CompanyMaster().companyMasterList[i]['name']),
                        Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 5),
                                child: customTextfield(
                                    CompanyMaster().companyMasterList[i]
                                        ['controller'],
                                    CompanyMaster().companyMasterList[i]
                                        ['hintText'])))
                      ],
                    ),
                  const SizedBox(
                    height: 500,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      for (int i = 0; i < toolsList.length; i++)
                        Container(
                          height: 70,
                          width: 70,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: appColors.blueColor, width: 2),
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
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            const SizedBox(
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class CompanyMaster {
  TextEditingController acProductCodeController = TextEditingController();
  TextEditingController acProductNameController = TextEditingController();

  List<Map<String, dynamic>> get companyMasterList => [
        {
          'name': 'Product Code',
          'hintText': 'Enter Product Code',
          'controller': acProductCodeController
        },
        {
          'name': 'Product Name',
          'hintText': 'Enter Product Name',
          'controller': acProductCodeController
        },
      ];
}
