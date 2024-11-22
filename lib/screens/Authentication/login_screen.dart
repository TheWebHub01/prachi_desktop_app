import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/constants/texts/customtext.dart';
import 'package:prachi_desktop_app/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  text: "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              customText(
                  text: "Login to access your travelwise  account",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: appColors.blackColor.withOpacity(0.75))),
            ],
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
