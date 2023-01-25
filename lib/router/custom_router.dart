import 'package:flutter/material.dart';
import 'package:palenda/pages/register_page.dart';
import 'package:palenda/router/route_constants.dart';

import '../pages/login_page.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      
      default:
         return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}