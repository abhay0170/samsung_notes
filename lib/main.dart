import 'package:flutter/material.dart';
import 'package:samsung_notes/screens/homepage.dart';
import 'package:samsung_notes/themes/themes.dart';

void main() {
  runApp(SamsungNotes());
}

class SamsungNotes extends StatelessWidget {
  const SamsungNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      // darkTheme: darkMode,
      home: HomePage(),
    );
  }
}
