import 'package:flutter/material.dart';
import 'views/login_view.dart';
import 'views/home_view.dart';

void main() => runApp(const StringClub());

class StringClub extends StatelessWidget {
  const StringClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StringClub',
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Color(0xFF131A22),
          ),
          headlineMedium: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFF131A22),
          ),
          bodySmall: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: Color(0xFF131A22),
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF131A22),
          ),
          labelSmall: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 14,
            color: Color(0xFF131A22),
          ),
        ),
      ),
      home: const HomeView(),
    );
  }
}
