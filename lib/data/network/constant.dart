
class Endpoints{

  Endpoints._();

  // base url
  static const String baseUrl = "https://api.artic.edu/api/v1";

  // receiveTimeout
  static const Duration receiveTimeout = Duration(seconds: 10000);

  // connectTimeout
  static const Duration connectionTimeout = Duration(seconds: 15000);

  static const String users = '/artworks';

}
