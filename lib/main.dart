import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Pro Flutter'),
          backgroundColor: Colors.teal,
        ),
        body: const Center(child: Quiz()),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.black87,
            displayColor: Colors.black87,
          ),
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        useMaterial3: true,
      ),
    );
  }
}
