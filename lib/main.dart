import 'dart:io';

import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/screens/Authentication/login_screen.dart';
import 'package:prachi_desktop_app/screens/company_master/company_master_screen.dart';

import 'package:prachi_desktop_app/screens/home_screen.dart';
import 'package:prachi_desktop_app/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

const apiKey = 'AIzaSyDyAYm3R9-VzidXskMwzBXORYjBAPjE_go';
const projectId = 'prachi-dektop-app';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: apiKey,
          appId: '1:70370501120:web:ff19274ec3c0c89b5a6ee5',
          messagingSenderId: '70370501120',
          projectId: projectId));
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    print("===============");
    await DesktopWindow.setMinWindowSize(Size(800, 600)); // Minimum size
    await DesktopWindow.setMaxWindowSize(Size(1920, 1080)); // Maximum size
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

User? user = FirebaseAuth.instance.currentUser;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSeed(seedColor: appColors.blueColor),
          useMaterial3: true,
        ),
        home: user != null ? HomeScreen() : const LoginScreen(),
      ),
    );
  }
}
