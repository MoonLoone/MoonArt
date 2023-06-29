
import 'package:moon_art/domain/pojo/pagination.dart';

import '../models/art.dart';

class ArtRawData{

  ArtPagination? artPagination;
  List<Art>? arts;

  ArtRawData({this.artPagination, this.arts});

  ArtRawData.fromJson(Map<String, dynamic> json){
    artPagination = ArtPagination.fromJson(json);
    arts = json["data"] as List<Art>;
  }
}
