import 'package:blurple/widgets/badge/base_badge.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory badgeCategory() {
  return WidgetbookCategory(
    name: "Badge",
    widgets: [
      WidgetbookComponent(
        name: "Base",
        useCases: [
          WidgetbookUseCase(
            name: "Default",
            builder: (context) {
              return const Center(
                child: BaseBadge(
                  label: Text(
                    "50",
                    style: TextStyle(color: Colors.pink),
                  ),
                  child: Text(
                    "A badge example",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Text",
            builder: (context) {
              return Center(
                child: BaseBadge.text(
                  label: "+2",
                  rightSpacing: -18,
                  topSpacing: -8,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ],
  );
}
