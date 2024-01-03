import 'package:get/get.dart';

import '../../data/provider/forgot_password_provider.dart';
import '../forgot_password_module/forgot_password_controller.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(
        provider: ForgotPasswordProvider(),
      ),
    );
  }
}
