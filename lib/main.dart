import 'package:drawer_pratice/screens/main_page.dart';
import 'package:flutter/material.dart';

import 'base/app_colors.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.bottomNavColor
        )
      ),
      title : "Draw Prarice",
      home : const MainPage(),
    );
  }
  
}