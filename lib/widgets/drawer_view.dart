import 'package:drawer_pratice/base/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  final Widget icon;
  final Color backgroundItem;
  final Color background;
  final List<Widget> item;
  final Function (int index) onClickItem;
  const DrawerView(
      {super.key,
      required this.icon,
      required this.backgroundItem,
      required this.background,
      required this.item,
      required this.onClickItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      color: background,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [icon],
                ),
              )),
          Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                    color: backgroundItem,
                    borderRadius: BorderRadius.all(Radius.circular(26))),
                margin: const EdgeInsets.only(bottom: 72, left: 16, right: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: item.asMap().map((index, widget) =>
                        MapEntry(index, InkWell(
                          onTap: () => onClickItem(index),
                          child: widget,
                        ))).values.toList(),
                  ),
                ),
              ))
        ],
      ),
    );
  }

}
