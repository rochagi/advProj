import 'package:advogadox/app/shared/client/base_url.dart';
import 'package:advogadox/app/shared/client/interceptors.dart';

import 'package:dio/native_imp.dart';

class CustomClient extends DioForNative {
  CustomClient() {
    options.baseUrl = BaseUrl;
    interceptors.add(CustomInterceptors());
    options.connectTimeout = 10000;
  }
}
