import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/signup_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signup_ui',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: SignUpPage(title: 'Sign Up'),
    );
  }
}

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignUpPageBody(),
    );
  }
}
