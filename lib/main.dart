import 'package:flutter/material.dart';
import 'package:voley_app/screens/primary_screen.dart';
import 'package:voley_app/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ConcertOne',
        scaffoldBackgroundColor: ColorsApp.background,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsApp.background,
        ),
      ),
      home: const PrimaryScreen(),
    );
  }
}

