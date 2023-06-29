import 'package:dio/dio.dart';
import 'package:moon_art/data/network/constant.dart';

class RestClient {
  final Dio _dio;

  RestClient(this._dio) {
    _dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.connectTimeout = Endpoints.connectionTimeout
      ..options.receiveTimeout = Endpoints.receiveTimeout
      ..options.responseType = ResponseType.json;
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
}
