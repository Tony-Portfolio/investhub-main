import 'package:get/get.dart';

import '../../../app/data/provider/dashboard_provider.dart';
import '../../../app/modules/dashboard_module/dashboard_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(
        provider: DashboardProvider(),
      ),
    );
  }
}
