import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/data/model/course.dart';
import 'package:investhub/app/themes/app_text_theme.dart';

class CourseTileWidget extends StatelessWidget {
  final Course course;

  CourseTileWidget({
    required this.course,
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
      child: Obx(
          () => Text(
            '',
            style: isHovered.value ? AppTextStyles.base.w400.s14.redColor : AppTextStyles.base.w400.s14.blackColor
          ),
        ),
    );
  }
}