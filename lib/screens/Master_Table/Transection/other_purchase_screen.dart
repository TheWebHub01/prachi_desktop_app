import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/constants/commonContainer/common_container.dart';
import 'package:prachi_desktop_app/constants/textformfield/custom_textformfield.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/constants/toolsList/tools_list.dart';
import 'package:prachi_desktop_app/screens/Master_Table/Company/company_master_screen.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class OtherPurchaseScreen extends StatefulWidget {
  const OtherPurchaseScreen({super.key});

  @override
  State<OtherPurchaseScreen> createState() => _OtherPurchaseScreenState();
}

class _OtherPurchaseScreenState extends State<OtherPurchaseScreen> {
  TextEditingController exciseNoController = TextEditingController();
  TextEditingController gstNoController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController gstTypeController = TextEditingController();
  TextEditingController vchnoController = TextEditingController();
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
                  Row(
                    children: [
                      commonContainer("VCH No"),
                      customTextfield(vchnoController, "Enter Here"),
                      commonContainer("VCH No"),
                      customTextfield(vchnoController, "Enter Here"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
