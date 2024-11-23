import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class CompanyMasterScreen extends StatefulWidget {
  const CompanyMasterScreen({super.key});

  @override
  State<CompanyMasterScreen> createState() => _CompanyMasterScreenState();
}

class _CompanyMasterScreenState extends State<CompanyMasterScreen> {
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
                    height: 15,
                  ),
                  for (int i = 0;
                      i < CompanyMaster().companyMasterList.length;
                      i++)
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 150,
                            height: 35,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            margin: const EdgeInsets.symmetric(horizontal: 25),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appColors.blueColor),
                            child: Center(
                              child: customText(
                                  text: CompanyMaster().companyMasterList[i]
                                      ['name'],
                                  style:
                                      TextStyle(color: appColors.whiteColor)),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          child: SizedBox(
                            height: 35,
                            child: TextFormField(
                              controller: CompanyMaster().companyMasterList[i]
                                  ['controller'],
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.all(8), // Added this

                                  labelText: CompanyMaster()
                                      .companyMasterList[i]['hintText'],
                                  labelStyle:
                                      TextStyle(color: appColors.textGreyColor),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: appColors.blueColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: appColors.blueColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: appColors.blueColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: appColors.blueColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: appColors.blueColor),
                                    borderRadius: BorderRadius.circular(5),
                                  )),
                            ),
                          ),
                        ))
                      ],
                    ),
                ],
              ),
            ),
            SizedBox(
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
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            height: 45,
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
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 45,
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150,
                            height: 45,
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
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 45,
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0; i < toolsList.length; i++)
                      Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: appColors.blueColor, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(toolsList[i]['image']),
                            SizedBox(
                              height: 5,
                            ),
                            customText(
                                text: toolsList[i]['name'],
                                style: TextStyle(
                                  fontSize: 11,
                                ))
                          ],
                        ),
                      )
                  ],
                )
              ],
            )),
            SizedBox(
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class CompanyMaster {
  TextEditingController codeController = TextEditingController();
  TextEditingController coNameController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController address3Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController tinNoController = TextEditingController();
  TextEditingController panNoController = TextEditingController();
  TextEditingController gstNoController = TextEditingController();
  TextEditingController jurisdictionController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();
  TextEditingController bankAcNoController = TextEditingController();
  TextEditingController rtgsNoController = TextEditingController();

  List<Map<String, dynamic>> get companyMasterList => [
        {
          'name': 'Code',
          'hintText': 'Enter Code',
          'controller': codeController
        },
        {
          'name': 'CO. Name',
          'hintText': 'Enter Co.Name',
          'controller': coNameController
        },
        {
          'name': 'Address 1',
          'hintText': 'Enter Address 1',
          'controller': address1Controller
        },
        {
          'name': 'Address 2',
          'hintText': 'Enter Address 2',
          'controller': address2Controller
        },
        {
          'name': 'Address 3',
          'hintText': 'Enter Address 3',
          'controller': address3Controller
        },
        {
          'name': 'City',
          'hintText': 'Enter City',
          'controller': cityController
        },
        {
          'name': 'State',
          'hintText': 'Enter State',
          'controller': stateController
        },
        {
          'name': 'Phone No',
          'hintText': 'Enter Mobile No',
          'controller': phoneNoController
        },
        {
          'name': 'Mobile No',
          'hintText': 'Enter Mobile No',
          'controller': mobileNoController
        },
        {
          'name': 'Email',
          'hintText': 'Enter Email Id',
          'controller': emailController
        },
        {
          'name': 'TIN No',
          'hintText': 'Enter Number',
          'controller': tinNoController
        },
        {
          'name': 'PAN No',
          'hintText': 'Enter Number',
          'controller': panNoController
        },
        {
          'name': 'GST No',
          'hintText': 'Enter Number',
          'controller': gstNoController
        },
        {
          'name': 'Jurisdiction',
          'hintText': 'Enter Number',
          'controller': jurisdictionController
        },
        {
          'name': 'Bank Name',
          'hintText': 'Enter Bank Name',
          'controller': bankNameController
        },
        {
          'name': 'Branch Name',
          'hintText': 'Enter Branch Name',
          'controller': branchNameController
        },
        {
          'name': 'Bank AC No',
          'hintText': 'Enter Bank AC No',
          'controller': bankAcNoController
        },
        {
          'name': 'RTGS No',
          'hintText': 'Enter Number',
          'controller': rtgsNoController
        },
      ];
}
