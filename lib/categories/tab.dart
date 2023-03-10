import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/widgets/tab/tab.dart';
import 'package:blurple/widgets/tab/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory tabBarCategory() {
  return WidgetbookCategory(
    name: "Tab Bar",
    widgets: [
      WidgetbookComponent(
        name: "BlurpleTabBar",
        useCases: [
          WidgetbookUseCase(
            name: "Default",
            builder: (context) {
              return BlurpleTabBar(
                items: [
                  DefaultTabItem(
                    isActive: false,
                    inactiveChild: Text(
                      "item 01",
                      style: TextStyle(
                        color: BlurpleThemeData.of(context)
                            .colorScheme
                            .accentColor
                            .withAlpha(175),
                      ),
                    ),
                    child: Text(
                      "Item 01",
                      style: TextStyle(
                          color: BlurpleThemeData.of(context)
                              .colorScheme
                              .accentColor),
                    ),
                  ),
                  DefaultTabItem(
                    isActive: false,
                    inactiveChild: Text(
                      "item 02",
                      style: TextStyle(
                        color: BlurpleThemeData.of(context)
                            .colorScheme
                            .accentColor
                            .withAlpha(175),
                      ),
                    ),
                    child: Text(
                      "item 02",
                      style: TextStyle(
                        color: BlurpleThemeData.of(context)
                            .colorScheme
                            .accentColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    ],
  );
}
