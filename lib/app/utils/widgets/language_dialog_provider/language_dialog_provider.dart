import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/utils/widgets/language_dialog_provider/view_dialog/dialog_language_widget.dart';

class DialogLanguageProvider {
  DialogLanguageProvider._();
  static void showDialogWidget({
    required Widget content,
    String? title,
    VoidCallback? callback,
    TextStyle? titleStyle,
    double iconSize = 28,
    double? maxHeight,
    double? maxWidth,
    EdgeInsets? padding,
    EdgeInsets? margin,
  }) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) => DialogLanguageWidget(
        content,
        title: title,
        iconSize: iconSize,
        padding: padding,
        maxWidth: maxWidth,
        titleStyle: titleStyle,
        maxHeight: maxHeight,
      ),
    ).whenComplete(callback ?? () {});
  }
}
