import 'package:get/get.dart';

import '../../../app/data/provider/admin_dashboard_provider.dart';
import '../../../app/modules/admin_dashboard_module/admin_dashboard_controller.dart';

class AdminDashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminDashboardController>(
      () => AdminDashboardController(
        provider: AdminDashboardProvider(),
      ),
    );
  }
}
