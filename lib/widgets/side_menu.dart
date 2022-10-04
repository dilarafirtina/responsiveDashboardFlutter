// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_learn/constants/controllers.dart';
import 'package:project_learn/constants/styles.dart';
import 'package:project_learn/helpers/responsiveness.dart';
import 'package:project_learn/routing/routes.dart';
import 'package:project_learn/widgets/custom_text.dart';
import 'package:project_learn/widgets/side_menu_items.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Image.asset("../assets/icon/logo.jpg")),
                    Flexible(
                        child: CustomText(
                            text: "Dilara Fırtına",
                            size: 20,
                            weight: FontWeight.bold,
                            color: active)),
                    SizedBox(
                      width: _width / 48,
                    ),
                    Divider(
                      color: lightGray.withOpacity(.1),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: sideMenuItems
                          .map((itemName) => SideMenuItem(
                              itemName: itemName == AuthenticationPageRoute
                                  ? "Log Out"
                                  : itemName,
                              onTap: () {
                                if (itemName == AuthenticationPageRoute) {
                                  // TODO :: go to authenticationpage
                                }

                                if (menuController.isActive(itemName)) {
                                  menuController.changeActiveItemTo(itemName);
                                  if (ResponsiveWidget.isSmallScreen(context)) {
                                    Get.back();
                                    // TODO :: go to itemName route
                                  }
                                }
                              }))
                          .toList(),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            )
        ],
      ),
    );
  }
}
