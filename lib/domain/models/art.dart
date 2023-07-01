
class Art{

  String? id;
  String? title;
  String? imageUrl;


  Art.fromJson(Map<String, dynamic> json){
    id = json["id"];
    title = json["title"];
    imageUrl = json["_links"]["thumbnail"]["href"];
  }

}
