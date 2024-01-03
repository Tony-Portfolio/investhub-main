import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investhub/app/translations/en_us.dart';
import 'package:investhub/app/translations/id_id.dart';
import 'package:investhub/app/translations/vi_vn.dart';
import 'package:investhub/app/translations/fr_fr.dart';
import 'package:investhub/app/translations/de_de.dart';
import 'package:investhub/app/translations/ms_my.dart';

class AppTranslationKey {
  AppTranslationKey._();

  // API Error
  static String get unknownError => "unknownError".tr;
  static String get timeoutError => "timeoutError".tr;
  static String get noConnectionError => "noConnectionError".tr;
  static String get unauthorizedError => "unauthorizedError".tr;
  static String get tryAgain => "tryAgain".tr;
  static String get identify => "identify".tr;
  static String get error => "error".tr;
  static String get successful => "successful".tr;
  static String get notMatch => "notMatch".tr;
  static String get noEmpty => "noEmpty".tr;
  static String get noRecords => "noRecords".tr;
  static String get pleaseLogin => "pleaseLogin".tr;
  static String get noData => "noData".tr;
  static String get enterText => "enterText".tr;
  static String get login => "login".tr;
  static String get register => "register".tr;
  static String get signUp => "signUp".tr;
  static String get remeberMe => "remeberMe".tr;
  static String get forgotPassword => "forgotPassword".tr;
  static String get email => "email".tr;
  static String get password => "password".tr;
  static String get orLoginWith => "orLoginWith".tr;
  static String get chooseLanguage => "chooseLanguage".tr;
  static String get needHelp => "needHelp".tr;
  static String get loginHelpDialog => "loginHelpDialog".tr;
  static String get loginHelpForgotPassword => "loginHelpForgotPassword".tr;
  static String get loginHelpPhoneNumber => "loginHelpPhoneNumber".tr;
  static String get loginHelpOther => "loginHelpOther".tr;
  static String get loginHelpContact => "loginHelpContact".tr;
  static String get loginHelpPhoneDialog => "loginHelpPhoneDialog".tr;
  static String get loginHelpPhoneAndroid => "loginHelpPhoneAndroid".tr;
  static String get loginHelpPhoneIos => "loginHelpPhoneIos".tr;
  static String get forgotPasswordTitle => "forgotPasswordTitle".tr;
  static String get forgotPasswordDescription => "forgotPasswordDescription".tr;
  static String get forgotPasswordLabel => "forgotPasswordLabel".tr;
  static String get forgotPasswordButton => "forgotPasswordButton".tr;
  static String get allEasy => "allEasy".tr;
  static String get joinAndExperience => "joinAndExperience".tr;
  static String get registerNow => "registerNow".tr;
  static String get alreadyHaveAccount => "alreadyHaveAccount".tr;
  static String get emailExample => "emailExample".tr;
  static String get byRegistering => "byRegistering".tr;
  static String get termsAndCondition => "termsAndCondition".tr;
  static String get privacyPolicy => "privacyPolicy".tr;
}

class AppTranslation {
  AppTranslation._();

  static final Locale locale = Get.deviceLocale!;
  static final Map<String, Map<String, String>> translations = {
    'en': enUS,
    'vi': viVN,
    'id': idID,
    'fr': frFR,
    'de': deDE,
    'ms': msMY,
  };
}
