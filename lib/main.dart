import 'package:blurple/themes/dark_theme.dart';
import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:blurple/widgets/bottom_sheets/bottom_sheet.dart';
import 'package:blurple/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  HotreloadWidgetbook({Key? key}) : super(key: key);
  final List<Option<Color>> colors = [
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
          WidgetbookCategory(
            name: 'buttons',
            widgets: [
              WidgetbookComponent(
                name: 'Base Button',
                useCases: [
                  WidgetbookUseCase(
                    name: 'Text',
                    builder: (context) => Center(
                      child: BaseButton.text(
                        onPressed: () {},
                        text: context.knobs.text(
                          label: "Text",
                          initialValue: "Button",
                        ),
                        backgroundColor: context.knobs.options(
                            label: "Background Color", options: colors),
                        foregroundColor: context.knobs.options(
                            label: "Foreground Color", options: colors),
                      ),
                    ),
                  ),
                  WidgetbookUseCase(
                    name: 'Icon',
                    builder: (context) => Center(
                      child: BaseButton.icon(
                        onPressed: () {},
                        label: context.knobs.nullableText(
                          label: "Text",
                          initialValue: "Button",
                        ),
                        foregroundColor: context.knobs.options(
                          label: "Foreground Color",
                          options: colors,
                        ),
                        backgroundColor: context.knobs.options(
                          label: "Background Color",
                          options: colors,
                        ),
                        icon: const Icon(
                          Icons.lock_clock,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              WidgetbookComponent(
                name: "Bordered Button",
                useCases: [
                  WidgetbookUseCase(
                    name: "Text",
                    builder: (context) => Center(
                      child: BorderedButton(
                        onPressed: () {},
                        text: context.knobs.text(
                          label: "Text",
                          initialValue: "Button",
                        ),
                      ),
                    ),
                  ),
                  WidgetbookUseCase(
                    name: "Icon",
                    builder: (context) => Center(
                      child: BorderedIconButton(
                        onPressed: () {},
                        text: context.knobs.nullableText(
                          label: "Text",
                          initialValue: "Button",
                        ),
                        foregroundColor: context.knobs.options(
                            label: "Foreground Color", options: colors),
                        child: const Icon(Icons.wifi),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          WidgetbookCategory(
            name: "Bottom Sheet",
            widgets: [
              WidgetbookComponent(
                name: "Base Bottom Sheet",
                useCases: [
                  WidgetbookUseCase(
                    name: "Default",
                    builder: (BuildContext context) {
                      return Center(
                        child: BorderedButton(
                          text: "Show Bottom Sheet",
                          backgroundColor: ColorTokens.shadow,
                          onPressed: () {
                            BaseBottomSheet(
                              body: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "This is a Base Bottom Sheet test",
                                    style: TextStyle(
                                      color: ColorTokens.greyLighter,
                                    ),
                                  ),
                                ],
                              ),
                            ).show(
                              context,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
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
