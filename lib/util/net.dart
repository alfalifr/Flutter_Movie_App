
import 'package:dicoding_movie_app/util/const.dart';
import 'package:dio/dio.dart';
import 'package:viewmodel/util/_consoles.dart';

class SiDio {
  SiDio._();
  static Dio getDefaultInstance({
    Dio? preExisting,
    bool isLogging = IoConfig.canPrint,
    LogInterceptor? interceptor,
  }) {
    final dio = preExisting ?? Dio(SiDio.defaultBaseOptions());
    dio.options.queryParameters[Const.KEY_API_KEY] = Const.API_KEY;
    if(isLogging) {
      dio.interceptors.add(interceptor ?? LogInterceptor(
        responseBody: true,
        requestBody: true,
        logPrint: prind,
      ));
    }
    return dio;
  }
  static const Map<String, dynamic> defaultHeaders = {
    "Accept": "application/json"
  };
  static Options defaultOptions() => Options(
    followRedirects: false,
    validateStatus: (code) => true, //So that every response, even errors, is returned.
    headers: defaultHeaders,
  );
  static BaseOptions defaultBaseOptions() => BaseOptions(
    followRedirects: false,
    //validateStatus: (code) => true, //So that every response, even errors, is returned.
    headers: defaultHeaders,
  );
}