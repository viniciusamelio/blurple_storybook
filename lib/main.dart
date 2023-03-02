import 'package:blurple/themes/dark_theme.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:blurple/widgets/buttons/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
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
                  builder: (context) => BaseButton.text(
                    onPressed: () {},
                    text: context.knobs.text(
                      label: "Text",
                      initialValue: "Button",
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Icon',
                  builder: (context) => BaseButton.icon(
                    onPressed: () {},
                    label: context.knobs.nullableText(
                      label: "Text",
                      initialValue: "Button",
                    ),
                    backgroundColor: context.knobs.options(
                      label: "Color",
                      options: [
                        Option(label: "Concrete", value: ColorTokens.concrete),
                        Option(label: "Shadow", value: ColorTokens.shadow),
                      ],
                    ),
                    icon: const Icon(Icons.lock_clock),
                  ),
                )
              ],
            ),
          ],
        )
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: blurpleDark,
        ),
      ],
      appInfo: AppInfo(name: 'Example'),
    );
  }
}
