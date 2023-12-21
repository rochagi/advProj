
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advogadox/app/modules/login/login_auth/loginAuth_module.dart';
 
void main() {

  setUpAll(() {
    initModule(LoginAuthModule());
  });
}