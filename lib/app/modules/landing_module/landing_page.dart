import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/data/model/language.dart';
import 'package:investhub/app/modules/landing_module/landing_controller.dart';
import 'package:investhub/app/modules/login_module/login_controller.dart';
import 'package:investhub/app/routes/app_pages.dart';
import 'package:investhub/app/themes/app_colors.dart';
import 'package:investhub/app/themes/app_text_theme.dart';
import 'package:investhub/app/utils/widgets/landing_language/landing_language_text.dart';
import 'package:investhub/app/utils/widgets/language_dialog_provider/language_dialog_provider.dart';
import 'package:investhub/app/translations/app_translations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LandingPage extends StatelessWidget {
  // const LandingPage({super.key});

  final loginController = Get.find<LoginController>();
  final landingController = Get.find<LandingController>();
  final apiHost = dotenv.env['API_HOST'];

  Locale getCurrentLocale() {
    return Get.locale ?? Get.deviceLocale!;
  }

  String getCurrentLocaleString() {
    Locale currentLocale = Get.locale ?? Get.deviceLocale!;
    return '${currentLocale.languageCode}_${currentLocale.countryCode}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('InvestHub'),
          actions: [
            GetBuilder<LoginController>(
              builder: (LoginController authController) {
                return MaterialButton(
                  color: AppColors.white,
                  height: 42.0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: AppColors.gray), // Set the border color
                  ),
                  elevation: 0,
                  onPressed: () {
                    // authController.login();
                    Get.toNamed(AppRoutes.login);
                  },
                  child: Text(
                    AppTranslationKey.login,
                    style: AppTextStyles.base.w600.s14.blackColor,
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
            GetBuilder<LoginController>(
              builder: (LoginController authController) {
                return MaterialButton(
                  color: AppColors.black,
                  height: 42.0,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: AppColors.black), // Set the border color
                  ),
                  onPressed: () {
                    // authController.login();
                    Get.toNamed(AppRoutes.register);
                  },
                  child: Text(
                    AppTranslationKey.signUp,
                    style: AppTextStyles.base.w600.s14.whiteColor,
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
            GetBuilder<LoginController>(
              builder: (LoginController authController) {
                return Container(
                  height: 34.0,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.black, // Set the border color
                      width: 1.0, // Set the border width
                    ),
                  ),
                  child: IconButton(
                    iconSize: 18.0,
                    icon: const Icon(Icons.language),
                    onPressed: () {
                      // Handle button press
                      showLanguageDialog();
                    },
                    // color: Colors.blue, // Set the icon color
                  ),
                );
                // return IconButton(
                //     onPressed: () {
                //       // authController.login();
                //       // Get.toNamed(AppRoutes.register);
                //       showLanguageDialog();
                //     },
                //     icon: const Icon(Icons.language),
                // );
              },
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Center(
                child: Image.asset('assets/images/img_1_dashboard.jpeg'),
              )),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Selection of courses',
                      style: AppTextStyles.base.w600.blackColor.s32,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void showLanguageDialog() {
    DialogLanguageProvider.showDialogWidget(
      content: Container(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LandingLanguageText(
                language: Language(code: 'enUS', name: 'English'),
                selected: getCurrentLocaleString() == "en_US",
                onPressed: () {
                  var locale = const Locale('en', 'US');
                  Get.updateLocale(locale);
                  Get.back();
                },
              ),
              LandingLanguageText(
                language: Language(code: 'idID', name: 'Indonesian'),
                selected: getCurrentLocaleString() == "id_ID",
                onPressed: () {
                  var locale = const Locale('id', 'ID');
                  Get.updateLocale(locale);
                  Get.back();
                },
              ),
              LandingLanguageText(
                language: Language(code: 'viVN', name: 'Vietnam'),
                selected: getCurrentLocaleString() == "vi_VN",
                onPressed: () {
                  var locale = const Locale('vi', 'VN');
                  Get.updateLocale(locale);
                  Get.back();
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LandingLanguageText(
                language: Language(code: 'frFR', name: 'French'),
                selected: getCurrentLocaleString() == "fr_FR",
                onPressed: () {
                  var locale = const Locale('fr', 'FR');
                  Get.updateLocale(locale);
                  Get.back();
                },
              ),
              LandingLanguageText(
                language: Language(code: 'deDE', name: 'Deutch'),
                selected: getCurrentLocaleString() == "de_DE",
                onPressed: () {
                  var locale = const Locale('de', 'DE');
                  Get.updateLocale(locale);
                  Get.back();
                },
              ),
              LandingLanguageText(
                language: Language(code: 'msMY', name: 'Malaysia'),
                selected: getCurrentLocaleString() == "ms_MY",
                onPressed: () {
                  var locale = const Locale('ms', 'MY');
                  Get.updateLocale(locale);
                  Get.back();
                },
              ),
            ],
          ),
        ],
      )),
      title: AppTranslationKey.chooseLanguage,
      titleStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      iconSize: 32,
      maxHeight: 600,
      maxWidth: 600,
      padding: const EdgeInsets.all(20),
      callback: () {
        // Handle callback after the dialog is closed (optional)
        print('Dialog closed $apiHost');
      },
    );
  }
}
