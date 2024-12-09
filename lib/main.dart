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
      title: 'Voley App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ConcertOne',
        scaffoldBackgroundColor: ColorsApp.backgroundPrincipal,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorsApp.backgroundPrincipal,
        ),
      ),
      home: const PrimaryScreen(),
    );
  }
}

