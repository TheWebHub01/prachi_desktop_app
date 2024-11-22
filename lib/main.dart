import 'dart:io';

import 'package:flutter/material.dart';
import 'package:prachi_desktop_app/screens/Authentication/login_screen.dart';
import 'package:prachi_desktop_app/screens/company_master/company_master_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:desktop_window/desktop_window.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    print("===============");
    await DesktopWindow.setMinWindowSize(Size(800, 600)); // Minimum size
    await DesktopWindow.setMaxWindowSize(Size(1920, 1080)); // Maximum size
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (p0, p1, p2) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Poppins",
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CompanyMasterScreen(),
      ),
    );
  }
}
