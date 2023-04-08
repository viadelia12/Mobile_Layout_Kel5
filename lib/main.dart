import 'package:flutter/material.dart';
import 'package:mobile_layout_kel5/components/palettes.dart';
import 'package:mobile_layout_kel5/pages/login.dart';
import 'package:mobile_layout_kel5/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Palette.mainPurple, fontFamily: 'Poppins'),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: LoginPage(),
    );
  }
}
