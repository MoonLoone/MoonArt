
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ArtPagination {

  int? total;
  int? limit;
  int? offset;
  int? pages;
  int? currentPage;
  String? nextUrl;

  ArtPagination(
      {this.total, this.limit, this.offset, this.pages, this.currentPage, this.nextUrl});

  ArtPagination.fromJson(Map<String, dynamic> json){
    total = json["total"];
    limit = json["limit"];
    offset = json["offset"];
    pages = json["total_pages"];
    currentPage = json["current_page"];
    nextUrl = json["next_url"];
  }

}
