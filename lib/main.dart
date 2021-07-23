import 'package:flutter/material.dart';
import 'package:instax/home_screen.dart';
import 'package:instax/login_screen.dart';
import 'package:instax/open_screen.dart';
import 'package:instax/profile_screen.dart';
import 'package:instax/search_screen.dart';
import 'package:instax/signup_screen.dart';
import 'package:instax/text_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      home: OpenScreen(),
      routes: {
        OpenScreen.id: (context) => OpenScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        TextScreen.id: (context) => TextScreen(),
        ProfileScreen.id: (context) => ProfileScreen()

      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        )
      
      
    );
  }
}