import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prachi_desktop_app/constants/commonContainer/common_container.dart';
import 'package:prachi_desktop_app/constants/textformfield/custom_textformfield.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/constants/toolsList/tools_list.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class PartyMasterScreen extends StatefulWidget {
  const PartyMasterScreen({super.key});

  @override
  State<PartyMasterScreen> createState() => _PartyMasterScreenState();
}

class _PartyMasterScreenState extends State<PartyMasterScreen> {
  TextEditingController exciseNoController = TextEditingController();
  TextEditingController gstNoController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController gstTypeController = TextEditingController();

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
                ],
              ),
            ),
            const SizedBox(
              width: 40,
            ),
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
                            width: 130,
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
                            width: 130,
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
                Row(
                  children: [
                    commonContainer("Excise No"),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: customTextfield(
                          exciseNoController, "Enter Excise No"),
                    )),
                  ],
                ),
                Row(
                  children: [
                    commonContainer("GST No"),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: customTextfield(gstNoController, "Enter GST No"),
                    )),
                  ],
                ),
                Row(
                  children: [
                    commonContainer("State"),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: customTextfield(stateController, "Enter State"),
                    )),
                  ],
                ),
                Row(
                  children: [
                    commonContainer("State"),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: customTextfield(stateController, "Enter State"),
                    )),
                  ],
                ),
                Row(
                  children: [
                    commonContainer("GST Type"),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: customTextfield(gstNoController, "Enter GST Type"),
                    )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    commonContainer("Birth Date"),
                    Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: appColors.blueColor),
                      ),
                      child: Center(
                        child: customText(
                            text: "16/05/2024",
                            style: TextStyle(color: appColors.blueColor)),
                      ),
                    ),
                    commonContainer("Birth Date"),
                    Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: appColors.blueColor),
                      ),
                      child: Center(
                        child: customText(
                            text: "16/05/2024",
                            style: TextStyle(color: appColors.blueColor)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonContainer("L Birth Date"),
                    Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: appColors.blueColor),
                      ),
                      child: Center(
                        child: customText(
                            text: "16/05/2024",
                            style: TextStyle(color: appColors.blueColor)),
                      ),
                    ),
                    commonContainer("Ldr Date"),
                    Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: appColors.blueColor),
                      ),
                      child: Center(
                        child: customText(
                            text: "16/05/2024",
                            style: TextStyle(color: appColors.blueColor)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    commonContainer("L Birth Date"),
                    Container(
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: appColors.blueColor),
                      ),
                      child: Center(
                        child: customText(
                            text: "16/05/2024",
                            style: TextStyle(color: appColors.blueColor)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                toolsListWidget(),
              ],
            )),
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
  TextEditingController acCodeController = TextEditingController();
  TextEditingController acNameController = TextEditingController();
  TextEditingController acGroupController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  TextEditingController bookPageNoController = TextEditingController();
  TextEditingController conPersonController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController address3Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController mobileNo2Controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController tinNoController = TextEditingController();
  TextEditingController panNoController = TextEditingController();
  TextEditingController aadharNoController = TextEditingController();
  TextEditingController refBYController = TextEditingController();
  TextEditingController westPercentageController = TextEditingController();
  TextEditingController crDaysController = TextEditingController();

  List<Map<String, dynamic>> get companyMasterList => [
        {
          'name': 'AC Code',
          'hintText': 'Enter here...',
          'controller': acCodeController
        },
        {
          'name': 'AC Name',
          'hintText': 'Enter here...',
          'controller': acNameController
        },
        {
          'name': 'AC Group',
          'hintText': 'Enter here...',
          'controller': acGroupController
        },
        {
          'name': 'Area',
          'hintText': 'Enter here...',
          'controller': areaController
        },
        {
          'name': 'Book Page No',
          'hintText': 'Enter here...',
          'controller': bookPageNoController
        },
        {
          'name': 'Con Person',
          'hintText': 'Enter here...',
          'controller': conPersonController
        },
        {
          'name': 'Adress 1',
          'hintText': 'Enter here...',
          'controller': address1Controller
        },
        {
          'name': 'Adress 2',
          'hintText': 'Enter here...',
          'controller': address2Controller
        },
        {
          'name': 'Adress 3',
          'hintText': 'Enter here...',
          'controller': address3Controller
        },
        {
          'name': 'City',
          'hintText': 'Enter here...',
          'controller': cityController
        },
        {
          'name': 'Phone No',
          'hintText': 'Enter here...',
          'controller': phoneNoController
        },
        {
          'name': 'Mobile No',
          'hintText': 'Enter here...',
          'controller': mobileNoController
        },
        {
          'name': 'Mobile NO 2',
          'hintText': 'Enter here...',
          'controller': mobileNo2Controller
        },
        {
          'name': 'Email',
          'hintText': 'Enter here...',
          'controller': emailController
        },
        {
          'name': 'Tin No',
          'hintText': 'Enter here...',
          'controller': tinNoController
        },
        {
          'name': 'Pancard No',
          'hintText': 'Enter here...',
          'controller': panNoController
        },
        {
          'name': 'Adhar No',
          'hintText': 'Enter here...',
          'controller': aadharNoController
        },
        {
          'name': 'REF by',
          'hintText': 'Enter here...',
          'controller': refBYController
        },
        {
          'name': 'West %',
          'hintText': 'Enter here...',
          'controller': westPercentageController
        },
        {
          'name': 'CR Days',
          'hintText': 'Enter here...',
          'controller': crDaysController
        },
      ];
}
