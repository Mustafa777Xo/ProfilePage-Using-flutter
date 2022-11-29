import 'package:flutter/material.dart';
import 'package:profile_page/pages/profile_page/profilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static ThemeData darkThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    appBarTheme: AppBarTheme(backgroundColor: Colors.black),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'profilePage',
      theme: darkThemeData,
      home: const ProfilePage(),
    );
  }
}
