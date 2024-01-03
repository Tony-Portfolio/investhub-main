import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../data/provider/forgot_password_provider.dart';

class ForgotPasswordController extends GetxController {
  final ForgotPasswordProvider? provider;
  RxBool isLoggedIn = false.obs;

  var isGoogleLoggedIn = false.obs;
  var isEmailLoggedIn = false.obs;

  ForgotPasswordController({this.provider});

  final _title = 'ForgotPassword'.obs;
  set title(text) => _title.value = text;
  get title => _title.value;

  void ForgotPassword() {
    // Implement your ForgotPassword logic here
    // For simplicity, just toggling the ForgotPassword status
    isLoggedIn.toggle();
  }
}
