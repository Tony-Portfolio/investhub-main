import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/themes/app_text_theme.dart';

class HyperlinkWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  HyperlinkWidget({
    required this.text,
    this.onPressed,
  });

  RxBool isHovered = false.obs;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        isHovered.value = true;
      },
      onExit: (_) => isHovered.value = false,
      child: GestureDetector(
        onTap: onPressed,
        child: Obx(
          () => Text(
            text,
            style: isHovered.value ? AppTextStyles.base.w400.s14.redColor : AppTextStyles.base.w400.s14.blackColor
          ),
        ),
      ),
    );
  }
}