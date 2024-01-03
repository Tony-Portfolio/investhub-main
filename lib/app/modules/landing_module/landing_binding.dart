import 'package:get/get.dart';
import 'package:investhub/app/data/provider/course_provider.dart';
import 'package:investhub/app/data/provider/login_provider.dart';
import 'package:investhub/app/modules/login_module/login_controller.dart';
import '../../../app/data/provider/landing_provider.dart';
import '../../../app/modules/landing_module/landing_controller.dart';

class LandingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingController>(
      () => LandingController(
        provider: LandingProvider(),
        providerCourse: CourseProvider()
      ),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(
        provider: LoginProvider(),
      ),
    );
  }
}
