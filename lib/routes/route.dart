import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/components/bottom_navbar.dart';
import 'package:mobile_layout_kel5/pages/help.dart';
import 'package:mobile_layout_kel5/pages/home.dart';
import 'package:mobile_layout_kel5/pages/login.dart';
import 'package:mobile_layout_kel5/pages/stopwatch.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/navbar':
        return MaterialPageRoute(builder: (_) => NavBar());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/stopwatch':
        return MaterialPageRoute(builder: (_) => StopwatchPage());
      case '/help':
        return MaterialPageRoute(builder: (_) => HelpPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}