
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:moon_art/data/network/rest_client.dart';

import '../data/network/api/art_api.dart';
import '../data/repository/art_repository.dart';
import '../presentation/pages/home_controller.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(RestClient(getIt<Dio>()));
  getIt.registerSingleton(ArtApi(restClient: getIt<RestClient>()));
  getIt.registerSingleton(ArtRepository(getIt.get<ArtApi>()));
  getIt.registerSingleton(HomeController());
}
