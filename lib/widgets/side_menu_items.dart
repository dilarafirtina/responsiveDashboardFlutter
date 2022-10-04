import 'package:flutter/material.dart';
import 'package:project_learn/helpers/responsiveness.dart';
import 'package:project_learn/widgets/horizontal_menu_item.dart';
import 'package:project_learn/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isMediumScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
