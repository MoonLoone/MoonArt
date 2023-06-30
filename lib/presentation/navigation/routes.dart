
import 'package:flutter/cupertino.dart';
import 'package:moon_art/presentation/pages/account/account_page.dart';
import 'package:moon_art/presentation/pages/home/gallery_page.dart';
import 'package:moon_art/presentation/pages/library/library_page.dart';

class Routes {

  Routes._();

  static Map<String, WidgetBuilder> bottomNavigator = {
    "gallery": (BuildContext context) => Gallery(),
    "account": (BuildContext context) => AccountPage(),
    "library": (BuildContext context) => LibraryPage(),
  };

}