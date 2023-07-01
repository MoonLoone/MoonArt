
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


void addInterceptors(Dio dio) {
  dio.interceptors.add(
    AwesomeDioInterceptor(
      logRequestTimeout: false,
      logRequestHeaders: false,
      logResponseHeaders: false,
      logger: debugPrint,
    ),
  );
}
