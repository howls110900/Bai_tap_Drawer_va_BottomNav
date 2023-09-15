import 'package:drawer_pratice/base/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});
  @override
  State<StatefulWidget> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
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
          'MyOrders Page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )));
  }
}
