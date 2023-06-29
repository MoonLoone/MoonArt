
class Art{

  int? id;
  String? title;
  String? artist;
  String? origin;

  Art({this.id, this.title, this.artist, this.origin});

  Art.fromJson(Map<String, dynamic> json){
    id = json["id"];
    title = json["title"];
    artist = json["artist_display"];
    origin = json["place_of_origin"];
  }

}
