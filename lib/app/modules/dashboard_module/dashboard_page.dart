import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/modules/dashboard_module/dashboard_controller.dart';

class DashboardPage extends GetWidget<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard'.tr)),
      body: Obx(() => Text(controller.text)),
    );
  }
}
