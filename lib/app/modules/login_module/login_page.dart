import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/routes/app_pages.dart';
import 'package:investhub/app/themes/app_text_theme.dart';
import 'package:investhub/app/utils/widgets/hyperlink/hyperlink_widget.dart';
import 'package:investhub/app/utils/widgets/language_dialog_provider/language_dialog_provider.dart';
import '../../../app/modules/login_module/login_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investhub/app/translations/app_translations.dart';

class LoginPage extends StatelessWidget {
  final LoginController authController = Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxBool isHoverRegister = false.obs;
  RxBool isHoverForgotPassword = false.obs;
  RxBool showPassword = false.obs;
  RxBool rememberMe = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('InvestHub')),
        body: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width > 600 ? 800.0 : null,
                child: SvgPicture.asset(
                  'assets/bg/bg_login.svg', // Replace with the path to your background SVG file
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Center(
              child: Card(
                margin: const EdgeInsets.all(20.0),
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width > 600 ? 400.0 : null,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                AppTranslationKey.login,
                                style: AppTextStyles.base.w600.s20.blackColor,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              alignment: Alignment.centerRight,
                              child: HyperlinkWidget(
                                text: AppTranslationKey.signUp,
                                onPressed: () {
                                  Get.toNamed('/register');
                                },
                              ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  hintText: AppTranslationKey.email,
                                  border: const OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Obx(
                                () => TextField(
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                    hintText: AppTranslationKey.password,
                                    border: const OutlineInputBorder(),
                                    suffixIcon: IconButton(
                                      icon: Icon(showPassword.value
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      onPressed: () {
                                        // Handle suffix button press
                                        showPassword.toggle();
                                        // showPassword.toggle();
                                      },
                                    ),
                                  ),
                                  obscureText:
                                      showPassword.value ? false : true,
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              MaterialButton(
                                height: 50.0,
                                color: Colors.blue,
                                onPressed: () async {
                                  await authController.loginWithEmailPassword(
                                    emailController.text,
                                    passwordController.text,
                                  );
                                },
                                child: Text(
                                  AppTranslationKey.login,
                                  style: AppTextStyles.base.w600.s16.whiteColor,
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Obx(() => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: rememberMe.value,
                                            onChanged: (value) {
                                              rememberMe.value = value!;
                                            },
                                          ),
                                          const SizedBox(width: 8.0),
                                          Text(AppTranslationKey.remeberMe),
                                        ],
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: HyperlinkWidget(
                                          text: AppTranslationKey.needHelp,
                                          onPressed: () {
                                            showHelpDialog();
                                          },
                                        ),
                                      )
                                    ],
                                  )),
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 1.0, // Height of the line
                                    width: 100,
                                    color: Colors.grey, // Color of the line
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        AppTranslationKey.orLoginWith,
                                        style: AppTextStyles
                                            .base.w400.s14.blueColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 1.0, // Height of the line
                                    width: 100,
                                    color: Colors.grey, // Color of the line
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20.0),
                              MaterialButton(
                                  color: Colors.white,
                                  height: 50.0,
                                  onPressed: () async {
                                    await authController.loginWithGoogle();
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/google.svg', // Provide the path to your Google logo SVG file
                                        height:
                                            24.0, // Set your desired icon height
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        'Google'.tr,
                                        style: AppTextStyles
                                            .base.w600.s16.blackColor,
                                      ),
                                    ],
                                  )),
                            ]),
                      ),
                      Container(
                        child: const SizedBox(height: 10.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void showHelpDialog() {
    DialogLanguageProvider.showDialogWidget(
        maxWidth: 400,
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppTranslationKey.loginHelpDialog,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(200, 168, 177, 190)),
                ),
                child: InkWell(
                  onTap: () {
                    Get.toNamed('/forgot_password');
                  },
                  child: Center(
                    child: Text(
                      AppTranslationKey.loginHelpForgotPassword,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color.fromARGB(200, 168, 177, 190)),
                ),
                child: InkWell(
                  onTap: () {
                    showHelpPhone();
                  },
                  child: Center(
                    child: Text(
                      AppTranslationKey.loginHelpPhoneNumber,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppTranslationKey.loginHelpOther,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: Text(
                        AppTranslationKey.loginHelpContact,
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ));
  }

  void showHelpPhone() {
    DialogLanguageProvider.showDialogWidget(
      maxWidth: 1200,
      content: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTranslationKey.loginHelpPhoneDialog,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(AppTranslationKey.loginHelpPhoneAndroid,
                style: TextStyle(
                    fontSize: 16, color: Color.fromRGBO(106, 120, 139, 1)),
                textAlign: TextAlign.center),
            SizedBox(height: 20),
            Text(AppTranslationKey.loginHelpPhoneIos,
                style: const TextStyle(
                    fontSize: 16, color: Color.fromRGBO(106, 120, 139, 1)),
                textAlign: TextAlign.center),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
