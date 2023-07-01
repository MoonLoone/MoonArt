import 'package:moon_art/data/repository/art_repository.dart';
import 'package:moon_art/di/service_locator.dart';
import 'package:moon_art/domain/models/art.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/network/constant.dart';

class GalleryController {
  final artRepository = getIt.get<ArtRepository>();

  Future<List<Art>> getArts() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token = preferences.getString(Authorization.ART_TOKEN_KEY);
    return await artRepository.getArts(token ?? "");
  }
}
