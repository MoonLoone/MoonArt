import 'package:dio/dio.dart';
import 'package:moon_art/data/network/constant.dart';
import 'package:moon_art/data/network/interceptors/interceptors_service.dart';

class ArtClient {
  final Dio _dio;

  ArtClient(this._dio) {
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = Endpoints.connectionTimeout
      ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json;
    addInterceptors(_dio);
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.get(
        url,
        queryParameters: queryParams,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? queryParams,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post(
        url,
        queryParameters: queryParams,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      rethrow;
    }
  }
}
