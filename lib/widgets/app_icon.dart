import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final String icon;
  final String username;
  final String name;
  const AppIcon(
      {super.key,
      required this.icon,
      required this.username,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(icon),
        const SizedBox(
          height: 16,
        ),
        Text(
          name,
          style: TextStyle(fontFamily: "Medium", fontSize: 20),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          username,
          style: TextStyle(fontFamily: "Regular", fontSize: 14),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
