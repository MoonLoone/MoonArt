import 'package:dio/dio.dart';
import 'package:moon_art/data/network/api/art_api.dart';
import 'package:moon_art/domain/models/art.dart';

class ArtRepository {
  final ArtApi artApi;

  ArtRepository(this.artApi);

  Future<List<Art>> getArts() async {
    try {
      final response = await artApi.getArtsApi();
      final users =
          (response.data['data'] as List).map((e) => Art.fromJson(e)).toList();
      return users;
    } on DioError catch (e) {
      final errorMessage =
          DioException(requestOptions: RequestOptions()).message.toString();
      throw errorMessage;
    }
  }
}
