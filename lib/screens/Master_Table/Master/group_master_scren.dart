import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prachi_desktop_app/constants/commonContainer/common_container.dart';
import 'package:prachi_desktop_app/constants/textformfield/custom_textformfield.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class GroupMasterScren extends StatefulWidget {
  const GroupMasterScren({super.key});

  @override
  State<GroupMasterScren> createState() => _GroupMasterScrenState();
}

class _GroupMasterScrenState extends State<GroupMasterScren> {
  TextEditingController grCodeController = TextEditingController();
  TextEditingController grNameController = TextEditingController();
  TextEditingController itemTypeController = TextEditingController();
  TextEditingController grRateTouchController = TextEditingController();
  TextEditingController meltingPercentageController = TextEditingController();
  TextEditingController salesAcController = TextEditingController();
  TextEditingController salesAc2Controller = TextEditingController();
  TextEditingController purchaseAcController = TextEditingController();
  TextEditingController purchase2AcController = TextEditingController();
  TextEditingController hsnCodeController = TextEditingController();
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
                  Row(
                    children: [
                      commonContainer("GR Code"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  grCodeController, "Enter GR Code")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("GR Name"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  grNameController, "Enter GR Code")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("Item Type"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  itemTypeController, "Enter item type")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("Gr Rate Touch"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(grRateTouchController,
                                  "Enter gr rate touch"))),
                      commonContainer("Purc Touch"),
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
                  Row(
                    children: [
                      commonContainer("Melting %"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  meltingPercentageController,
                                  "Enter Melting %"))),
                      commonContainer("West &"),
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
                  Row(
                    children: [
                      commonContainer("Sales AC"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  salesAcController, "Enter Sales AC"))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  salesAc2Controller, "Enter Here")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("Purchase AC"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  purchaseAcController, "Enter Purchase AC"))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  purchase2AcController, "Enter Here")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("HSN Code"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  hsnCodeController, "Enter HSN code")))
                    ],
                  ),
                  const SizedBox(
                    height: 200,
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
