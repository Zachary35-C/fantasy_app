import 'package:fantasy_app/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fantasy App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}
