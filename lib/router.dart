import 'package:flutter/material.dart';
import 'package:myloapp/home/view/home.dart';
import 'package:myloapp/login/view/login.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case 'landing':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
