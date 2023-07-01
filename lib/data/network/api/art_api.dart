import 'package:dio/dio.dart';
import 'package:moon_art/data/network/constant.dart';
import 'package:moon_art/data/network/rest_client.dart';

class ArtApi {
  final ArtClient restClient;

  ArtApi({required this.restClient});

  Future<Response> getArtsApi(String token) async {
    try {
      Options options = Options(headers: {
        "X-XAPP-Token": token
      });
      return await restClient.get(Endpoints.artworks, options: options);
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getArtToken() async {
    try {
      Map<String, dynamic>? queryParams = {
        "client_id": Authorization.clientId,
        "client_secret": Authorization.clientSecret,
      };
      return await restClient.post(
        Endpoints.token,
        queryParams: queryParams,
      );
    } catch (e) {
      rethrow;
    }
  }
}
