
import 'package:flutter/cupertino.dart';
import 'package:moon_art/presentation/pages/account/account_page.dart';
import 'package:moon_art/presentation/pages/library/library_page.dart';
import '../pages/gallery/gallery_page.dart';

class Routes {

  Routes._();

  static Map<String, WidgetBuilder> bottomNavigator = {
    "Gallery": (BuildContext context) => Gallery(),
    "Account": (BuildContext context) => AccountPage(),
    "Library": (BuildContext context) => LibraryPage(),
  };

}