import 'package:flutter/material.dart';

class AppColors {
  Color blueColor = const Color(0xFF1877F2);
  Color whiteColor = Colors.white;
  Color blackColor = Color(0xFF313131);
  Color skyBlueColor = const Color(0xFFECF4FF);
  Color greyColor = const Color(0xFF79747E);
  Color lightGreyColor = const Color(0xFFC1C1C1);
  Color textGreyColor = const Color(0xFF797979);
  Color lightskyColor = const Color(0xFFD3E5FE);

  LinearGradient myLinearGradient = LinearGradient(
    colors: [
      Color(0xFF2257BF), // Light Blue
      Color(0xFF8AADF3), // Blue
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

AppColors appColors = AppColors();
