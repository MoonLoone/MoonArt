import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:moon_art/data/network/rest_client.dart';
import 'package:moon_art/presentation/pages/gallery/gallery_controller.dart';

import '../data/network/api/art_api.dart';
import '../data/repository/art_repository.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(ArtClient(getIt<Dio>()));
  getIt.registerSingleton(ArtApi(restClient: getIt<ArtClient>()));
  getIt.registerSingleton(ArtRepository(getIt.get<ArtApi>()));
  getIt.registerSingleton(GalleryController());

  getIt.get<ArtRepository>().getArtToken();
}
