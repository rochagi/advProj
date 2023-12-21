import 'package:dio/dio.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("REQUEST: ${options.method} => PATH: ${options.path}");
    return super.onRequest(options, handler);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    // 200
    // 201
    print(
        "RESPONSE ${response.statusCode} => PATH ${response.requestOptions.path}");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError e, ErrorInterceptorHandler handler) {
    // exception
    print(
        "RESPONSE ${e.response?.statusCode} => PATH: ${e.requestOptions.path}");
    return super.onError(e, handler);
  }
}
