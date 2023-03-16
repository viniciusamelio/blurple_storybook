import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/widgets/bottom_sheets/bottom_sheet.dart';
import 'package:blurple/widgets/input/base_input.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory inputCategory() {
  return WidgetbookCategory(
    name: "input",
    widgets: [
      WidgetbookComponent(
        name: "Base",
        useCases: [
          WidgetbookUseCase(
            name: "Default",
            builder: (context) {
              return const Center(
                child: BaseInput(
                  label: "Base input",
                  type: TextInputType.emailAddress,
                  hintText: "Your e-mail",
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Icon",
            builder: (context) {
              return Center(
                child: BaseInput(
                  label: "Icon input",
                  suffixIcon: InkWell(
                    onTap: () => const BaseBottomSheet(
                      type: BottomSheetType.content,
                      title: "This is a bottom sheet",
                      content: "Lorem ipsum",
                    )..show(context),
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color:
                          BlurpleThemeData.of(context).colorScheme.accentColor,
                    ),
                  ),
                ),
              );
            },
          ),
          WidgetbookUseCase(
            name: "Large",
            builder: (context) {
              return Center(
                child: BaseInput.large(
                  label: "Large input",
                ),
              );
            },
          ),
        ],
      ),
    ],
  );
}
