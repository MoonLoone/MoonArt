import 'package:dio/dio.dart';
import 'package:moon_art/data/network/api/art_api.dart';
import 'package:moon_art/data/network/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/models/art.dart';
import '../network/dio_exception.dart';

class ArtRepository {
  final ArtApi artApi;

  ArtRepository(this.artApi);

  Future<List<Art>> getArts(String token) async {
    try {
      final response = await artApi.getArtsApi(token);
      final art = (response.data["_embedded"]["artworks"] as List)
          .map((item) => Art.fromJson(item)).toList();
      return art;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }

  getArtToken() async {
    try {
      final response = await artApi.getArtToken();
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString(
          Authorization.ART_TOKEN_KEY, response.data["token"]);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
