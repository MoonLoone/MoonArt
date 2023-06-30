
import 'package:moon_art/data/repository/art_repository.dart';
import 'package:moon_art/di/service_locator.dart';
import 'package:moon_art/domain/models/art.dart';

class GalleryController{

  final artRepository = getIt.get<ArtRepository>();

  Future<List<Art>> getArts() async{
    return await artRepository.getArts();
  }

}
