import 'package:drawer_pratice/base/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: AppColors.bottomNavColor,
      ),
      body: const Center(child: Text('Home Page',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),))
    );
  }

}