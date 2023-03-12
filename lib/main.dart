import 'package:blurple/themes/dark_theme.dart';
import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'categories/categories.dart';

void main() {
  runApp(const WidgetBook());
}

class WidgetBook extends StatelessWidget {
  const WidgetBook({Key? key}) : super(key: key);
  static final List<Option<Color>> colors = [
    Option(label: "Blurple", value: ColorTokens.blurple),
    Option(label: "Blurple Lighter", value: ColorTokens.blurpleLighter),
    Option(label: "Blurple Darker", value: ColorTokens.blurpleDarker),
    Option(label: "Blue", value: ColorTokens.blue),
    Option(label: "Concrete", value: ColorTokens.concrete),
    Option(label: "Concrete Darker", value: ColorTokens.concreteDarker),
    Option(label: "Green", value: ColorTokens.green),
    Option(label: "Grey", value: ColorTokens.grey),
    Option(label: "Grey Lighter", value: ColorTokens.greyLighter),
    Option(label: "Grey Darker", value: ColorTokens.greyDarker),
    Option(label: "Red", value: ColorTokens.red),
    Option(label: "Shadow", value: ColorTokens.shadow),
    Option(label: "White", value: ColorTokens.white),
    Option(label: "Yellow", value: ColorTokens.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return BlurpleThemeData.defaultTheme(
      child: Widgetbook.material(
        scaffoldBuilder: (context, frame, child) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(36),
            child: child,
          ),
        ),
        categories: [
          buttonsCategory(),
          bottomSheetCategory(),
          tabBarCategory(),
          inputCategory(),
        ],
        themes: [
          WidgetbookTheme(
            name: 'Dark',
            data: blurpleDark,
          ),
          WidgetbookTheme(
            name: 'Light',
            data: ThemeData.light(),
          ),
        ],
        appInfo: AppInfo(name: 'Blurple'),
      ),
    );
  }
}
