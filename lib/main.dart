import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/presentation/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff0C1A4C),
        ),
        scaffoldBackgroundColor: Color(0xff0C1A4C),
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.inter(color:Colors.white,fontSize: 14.0, fontWeight: FontWeight.w500),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff0C1A4C),
        ),
        scaffoldBackgroundColor: Color(0xff0C1A4C),
        textTheme: TextTheme(
          bodyMedium: GoogleFonts.inter(color:Colors.white,fontSize: 14.0, fontWeight: FontWeight.w500),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

