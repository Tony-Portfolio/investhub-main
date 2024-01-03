import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/routes/app_pages.dart';
import '../../../app/modules/register_module/register_controller.dart';
import 'package:investhub/app/utils/widgets/hyperlink/hyperlink_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:investhub/app/themes/app_text_theme.dart';
import 'package:investhub/app/translations/app_translations.dart';
import '../../../app/modules/login_module/login_controller.dart';

class RegisterPage extends StatelessWidget {
  final LoginController authController = Get.find();
  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register'.tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'InvestHub',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(height: 100),
            Container(
              width: MediaQuery.of(context).size.width > 600
                  ? MediaQuery.of(context).size.width * .7
                  : null,
              constraints: const BoxConstraints(maxWidth: 1000),
              height: MediaQuery.of(context).size.height * .7,
              child: Row(
                mainAxisAlignment: MediaQuery.of(context).size.width > 1100
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.center,
                children: [
                  if (MediaQuery.of(context).size.width > 1100)
                    const RegisterHero(),
                  Flexible(
                    child: Container(
                      // color: Colors.amber,
                      constraints: MediaQuery.of(context).size.width > 600
                          ? const BoxConstraints(maxWidth: 360)
                          : null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppTranslationKey.registerNow,
                            style: const TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(AppTranslationKey.alreadyHaveAccount + " "),
                              Container(
                                alignment: Alignment.centerRight,
                                child: HyperlinkWidget(
                                  text: AppTranslationKey.login,
                                  onPressed: () {
                                    Get.toNamed(AppRoutes.login);
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          MaterialButton(
                            color: Colors.white,
                            height: 50.0,
                            onPressed: () async {
                              // await authController.loginWithGoogle();
                            },
                            child: Container(
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                    style:
                                        AppTextStyles.base.w600.s16.blackColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 1.0, // Height of the line
                                width: 100,
                                color: Colors.grey, // Color of the line
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    AppTranslationKey.orLoginWith,
                                    style:
                                        AppTextStyles.base.w400.s14.blackColor,
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
                          Container(
                            constraints: const BoxConstraints(maxWidth: 350),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 20.0),
                                const TextField(
                                  decoration: InputDecoration(
                                    hintText: "E-mail",
                                    border: const OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(AppTranslationKey.emailExample)
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                MaterialButton(
                                  height: 50.0,
                                  minWidth: 360,
                                  color: Colors.blue,
                                  onPressed: () async {
                                    // await authController.loginWithEmailPassword(
                                    //   emailController.text,
                                    //   passwordController.text,
                                    // );
                                  },
                                  child: Text(
                                    AppTranslationKey.signUp,
                                    style:
                                        AppTextStyles.base.w600.s16.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(AppTranslationKey.byRegistering),
                          const SizedBox(height: 5),
                          Wrap(
                            alignment: WrapAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HyperlinkWidget(
                                text: AppTranslationKey.termsAndCondition,
                                onPressed: () {},
                              ),
                              const Text(" & "),
                              HyperlinkWidget(
                                text: AppTranslationKey.privacyPolicy,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // const SizedBox(height: 140),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '© 2009-2024, InvestHub',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 20),
                Text('Investhub Care',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RegisterHero extends StatelessWidget {
  const RegisterHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 360,
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img_2_register.png'))),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          AppTranslationKey.allEasy,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          AppTranslationKey.joinAndExperience,
          style: const TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    );
  }
}
