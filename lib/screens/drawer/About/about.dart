import 'package:drawer_pratice/base/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});
  @override
  State<StatefulWidget> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          backgroundColor: AppColors.bottomNavColor,
        ),
        body: const Center(
            child: Text(
          'About Page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )));
  }
}
