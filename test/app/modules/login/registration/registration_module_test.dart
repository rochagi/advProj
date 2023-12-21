import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:advogadox/app/modules/login/registration/registration_module.dart';

void main() {
  setUpAll(() {
    initModule(RegistrationModule());
  });
}
