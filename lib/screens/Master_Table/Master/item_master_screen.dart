import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prachi_desktop_app/constants/commonContainer/common_container.dart';
import 'package:prachi_desktop_app/constants/textformfield/custom_textformfield.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/constants/toolsList/tools_list.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class ItemMasterScreen extends StatefulWidget {
  const ItemMasterScreen({super.key});

  @override
  State<ItemMasterScreen> createState() => _ItemMasterScreenState();
}

class _ItemMasterScreenState extends State<ItemMasterScreen> {
  TextEditingController prCodeController = TextEditingController();
  TextEditingController prCode2Controller = TextEditingController();
  TextEditingController grCodeController = TextEditingController();
  TextEditingController grCode2Controller = TextEditingController();
  TextEditingController itemCodeController = TextEditingController();
  TextEditingController itemCode2Controller = TextEditingController();
  TextEditingController itemCode3Controller = TextEditingController();
  TextEditingController itemCode4Controller = TextEditingController();
  TextEditingController itemNameController = TextEditingController();
  TextEditingController counterCodeController = TextEditingController();
  TextEditingController counterCode2Controller = TextEditingController();
  TextEditingController hsnCodeController = TextEditingController();
  TextEditingController unitNameController = TextEditingController();
  TextEditingController ratePerController = TextEditingController();
  TextEditingController labourController = TextEditingController();
  TextEditingController lbrPANGmController = TextEditingController();
  TextEditingController conPercentageController = TextEditingController();
  TextEditingController discPercentageController = TextEditingController();
  TextEditingController itemRateController = TextEditingController();
  TextEditingController pcsRateController = TextEditingController();

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
                      commonContainer("PR Code"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  prCode2Controller, "Enter PR Code"))),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  prCode2Controller, "Enter Here")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("Gr Code"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  grCodeController, "Enter Gr Code"))),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  grCode2Controller, "Enter Here")))
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("Item Code"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  itemCodeController, "Enter item type"))),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  itemCode2Controller, "Enter item type"))),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  itemCode3Controller, "Enter item type"))),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  itemCode4Controller, "Enter item type"))),
                    ],
                  ),
                  Row(
                    children: [
                      commonContainer("Item Name"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(
                                  itemNameController, "Enter Item Name"))),
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
                      commonContainer("Counter Code"),
                      Expanded(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: customTextfield(counterCodeController,
                                  "Enter Counter Code"))),
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
                  // Row(
                  //   children: [
                  //     commonContainer("Sales AC"),
                  //     Expanded(
                  //         child: Padding(
                  //             padding: const EdgeInsets.only(top: 5, bottom: 5),
                  //             child: customTextfield(
                  //                 salesAcController, "Enter Sales AC"))),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     Expanded(
                  //         child: Padding(
                  //             padding: const EdgeInsets.only(top: 5, bottom: 5),
                  //             child: customTextfield(
                  //                 salesAc2Controller, "Enter Here")))
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     commonContainer("Purchase AC"),
                  //     Expanded(
                  //         child: Padding(
                  //             padding: const EdgeInsets.only(top: 5, bottom: 5),
                  //             child: customTextfield(
                  //                 purchaseAcController, "Enter Purchase AC"))),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     Expanded(
                  //         child: Padding(
                  //             padding: const EdgeInsets.only(top: 5, bottom: 5),
                  //             child: customTextfield(
                  //                 purchase2AcController, "Enter Here")))
                  //   ],
                  // ),
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
                  toolsListWidget(),
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
