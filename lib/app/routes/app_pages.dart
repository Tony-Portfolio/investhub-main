import 'package:get/get.dart';
import 'package:investhub/app/modules/register_module/register_binding.dart';
import 'package:investhub/app/modules/register_module/register_page.dart';
import 'package:investhub/app/modules/landing_module/landing_binding.dart';
import 'package:investhub/app/modules/landing_module/landing_page.dart';
import 'package:investhub/app/modules/dashboard_module/dashboard_binding.dart';
import 'package:investhub/app/modules/dashboard_module/dashboard_page.dart';
import 'package:investhub/app/modules/admin_dashboard_module/admin_dashboard_binding.dart';
import 'package:investhub/app/modules/admin_dashboard_module/admin_dashboard_page.dart';
import 'package:investhub/app/modules/login_module/login_binding.dart';
import 'package:investhub/app/modules/login_module/login_page.dart';
import 'package:investhub/app/modules/forgot_password_module/forgot_password_binding.dart';
import 'package:investhub/app/modules/forgot_password_module/forgot_password_page.dart';
import 'package:investhub/app/utils/auth_middleware.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.adminDashboard,
      page: () => const AdminDashboardPage(),
      binding: AdminDashboardBinding(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.initial,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => ForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
  ];
}
