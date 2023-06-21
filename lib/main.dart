import 'package:flutter/material.dart';


import 'package:tab_bar_4_1/screens/views/audio_page.dart';

import 'package:tab_bar_4_1/screens/views/home_page.dart';
import 'package:tab_bar_4_1/screens/views/video_page.dart';


void main() {
  runApp( const Gautam());
}

class Gautam extends StatefulWidget {
  const Gautam({super.key});

  @override
  State<Gautam> createState() => _GautamState();
}

class _GautamState extends State<Gautam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary: Colors.deepPurpleAccent,
          secondary: Colors.white54,
        ),
      ),
      themeMode:ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const home_page(),
        'audio_page': (context) => const audio_page(),
        'video_page': (context) => const video_page(),
      },
    );
  }
}
