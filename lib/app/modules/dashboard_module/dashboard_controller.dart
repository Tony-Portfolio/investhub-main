import 'package:get/get.dart';
import '../../../app/data/provider/dashboard_provider.dart';

class DashboardController extends GetxController {
  final DashboardProvider? provider;
  DashboardController({this.provider});

  final _text = 'Dashboard'.obs;
  set text(text) => _text.value = text;
  get text => _text.value;
}
