import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:blurple/widgets/bottom_sheets/bottom_sheet.dart';
import 'package:blurple/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookCategory bottomSheetCategory() {
  return WidgetbookCategory(
    name: "Bottom Sheet",
    widgets: [
      WidgetbookComponent(
        name: "Base Bottom Sheet",
        useCases: [
          WidgetbookUseCase(
            name: "Base",
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
          WidgetbookUseCase(
              name: "Content",
              builder: (context) {
                return Center(
                  child: BorderedButton(
                    text: "Show Content Bottom Sheet",
                    onPressed: () {
                      BaseBottomSheet(
                        title: "Content Bottom Sheet",
                        type: BottomSheetType.content,
                        content:
                            "This is a content bottom sheet, which means it should display a title, a content and maybe some actions and illustrations",
                        actions: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BaseButton.text(
                              text: "Do something",
                              foregroundColor: BlurpleThemeData.of(context)
                                  .colorScheme
                                  .infoColor,
                              onPressed: () {},
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            BaseButton.text(
                              text: "Close it",
                              foregroundColor: BlurpleThemeData.of(context)
                                  .colorScheme
                                  .dangerColor,
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      ).show(context);
                    },
                  ),
                );
              }),
        ],
      ),
    ],
  );
}
