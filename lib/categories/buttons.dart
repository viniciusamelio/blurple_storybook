import 'package:blurple/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import '../main.dart';

WidgetbookCategory buttonsCategory() {
  return WidgetbookCategory(
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
                  label: "Background Color",
                  options: WidgetBook.colors,
                ),
                foregroundColor: context.knobs.options(
                  label: "Foreground Color",
                  options: WidgetBook.colors,
                ),
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
                  options: WidgetBook.colors,
                ),
                backgroundColor: context.knobs.options(
                  label: "Background Color",
                  options: WidgetBook.colors,
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
                  label: "Foreground Color",
                  options: WidgetBook.colors,
                ),
                child: const Icon(Icons.wifi),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
