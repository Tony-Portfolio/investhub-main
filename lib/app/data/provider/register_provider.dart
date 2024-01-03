import 'package:investhub/app/data/api/api_connect.dart';
import 'package:investhub/app/data/model/user.dart';
import 'package:investhub/app/utils/constants.dart';

class RegisterProvider {
  RegisterProvider();

  // Get request
  Future<User> getUser() async {
    return User.fromJson(
      (await ApiConnect.instance.get(EndPoints.user)).getBody(),
    );
  }
}
