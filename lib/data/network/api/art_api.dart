
import 'package:dio/dio.dart';
import 'package:moon_art/data/network/constant.dart';
import 'package:moon_art/data/network/rest_client.dart';

class ArtApi{

  final RestClient restClient;

  ArtApi({required this.restClient});

  Future<Response> getArtsApi() async {
    try{
      return await restClient.get(Endpoints.users);
    }catch(e){
      rethrow;
    }
  }
}
