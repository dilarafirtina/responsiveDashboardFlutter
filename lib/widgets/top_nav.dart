import 'package:flutter/material.dart';
import 'package:project_learn/constants/styles.dart';
import 'package:project_learn/helpers/responsiveness.dart';
import 'package:project_learn/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0,
      title: Row(
        children: [
          Visibility(
              child: CustomText(
            text: "Türkçe Dersim",
            color: lightGray,
            size: 20,
            weight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              icon: Icon(Icons.settings, color: dark.withOpacity(.7)),
              onPressed: () {}),
          Stack(
            children: [
              IconButton(
                  icon: Icon(Icons.notifications, color: dark.withOpacity(.7)),
                  onPressed: () {}),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: lightGray,
          ),
          const SizedBox(
            width: 24,
          ),
          CustomText(
            text: "Dilara Fırtına",
            color: dark,
            size: 16,
            weight: FontWeight.normal,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                  backgroundColor: light,
                  child: Icon(Icons.person_outline, color: dark)),
            ),
          )
        ],
      ),
      iconTheme: IconThemeData(color: dark),
      backgroundColor: Colors.transparent,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 14),
                    child: Image.asset("../assets/icon/logo.jpg", width: 28))
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => key.currentState?.openDrawer()),
    );
