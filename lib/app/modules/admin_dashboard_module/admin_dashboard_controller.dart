import 'package:get/get.dart';
import '../../../app/data/provider/admin_dashboard_provider.dart';

class AdminDashboardController extends GetxController {
  final AdminDashboardProvider? provider;
  AdminDashboardController({this.provider});

  final _text = 'AdminDashboard'.obs;
  set text(text) => _text.value = text;
  get text => _text.value;
}
