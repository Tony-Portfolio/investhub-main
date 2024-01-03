import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/modules/admin_dashboard_module/admin_dashboard_controller.dart';

class AdminDashboardPage extends GetWidget<AdminDashboardController> {
  const AdminDashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AdminDashboard'.tr)),
      body: Obx(() => Text(controller.text)),
    );
  }
}
