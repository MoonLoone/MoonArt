
class Endpoints{

  Endpoints._();

  // base url
  static const String baseUrl = "https://api.artsy.net/api";

  // receiveTimeout
  static const Duration receiveTimeout = Duration(milliseconds: 10000);

  // connectTimeout
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  static const String artworks = '/artworks';

  //Athorization
  static const String token = '/tokens/xapp_token';

}

class Authorization{

  static const String ART_TOKEN_KEY = "art_token";
  static const String clientId = "9bb828efc509ff14a702";
  static const String clientSecret = "41e4a20632c185e52c865f51f818ce9f";

}
