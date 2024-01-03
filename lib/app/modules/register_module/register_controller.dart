import 'package:get/get.dart';
import '../../../app/data/provider/register_provider.dart';

class RegisterController extends GetxController {
  final RegisterProvider? provider;
  RegisterController({this.provider});

  final _text = 'Register'.obs;
  set text(text) => _text.value = text;
  get text => _text.value;
}
