import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../app/data/provider/login_provider.dart';

class LoginController extends GetxController {
  final LoginProvider? provider;
  RxBool isLoggedIn = false.obs;
  
  var isGoogleLoggedIn = false.obs;
  var isEmailLoggedIn = false.obs;

  
  
  LoginController({this.provider});

  final _title = 'Login'.obs;
  set title(text) => _title.value = text;
  get title => _title.value;
  
  void login() {
    // Implement your login logic here
    // For simplicity, just toggling the login status
    isLoggedIn.toggle();
  }

  void logout() {
    // Implement your logout logic here
    // For simplicity, just toggling the login status
    isLoggedIn.toggle();
  }

  
  Future<void> loginWithEmailPassword(String email, String password) async {
    try {
      // Implement email/password login logic here
      // Set isEmailLoggedIn to true upon successful login
    } catch (error) {
      // print('Email login error: $error');
    }
  }

  // Google Login
  Future<void> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      isGoogleLoggedIn.value = true;
    } catch (error) {
      print('Google login error: $error');
    }
  }
}
