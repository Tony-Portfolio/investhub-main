import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../forgot_password_module/forgot_password_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investhub/app/translations/app_translations.dart';

class ForgotPasswordPage extends StatelessWidget {
  final ForgotPasswordController authController = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isHoverRegister = false.obs;
  RxBool isHoverForgotPassword = false.obs;
  RxBool showPassword = false.obs;
  RxBool rememberMe = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width > 600 ? 800.0 : null,
              height: 600,
              child: SvgPicture.asset(
                'assets/bg/bg_login.svg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 450,
              height: 300,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: SvgPicture.asset(
                        'assets/icons/arrow-left-solid.svg',
                        width: 20,
                        height: 20,
                      ),
                      onTap: () {
                        if (Get.currentRoute == '/forgot_password') {
                          // Check if there is a previous route
                          Get.back(); // Attempt to go back

                          if (Get.currentRoute == '/forgot_password') {
                            // If there is no previous route, navigate to the login page
                            Get.toNamed('/login');
                          }
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    AppTranslationKey.forgotPasswordTitle,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    AppTranslationKey.forgotPasswordDescription,
                    style: TextStyle(
                        color: Color(0xFF949CAA), fontSize: 16, height: 1),
                  ),
                  const SizedBox(height: 18),
                  TextField(
                    decoration: InputDecoration(
                      labelText: AppTranslationKey.forgotPasswordLabel,
                      hintText: '',
                      hintStyle: TextStyle(height: 2),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(0, 8, 0, 2),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: Text(
                        AppTranslationKey.forgotPasswordButton,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
