import 'package:flutter/material.dart';
import 'package:makanika/bottomnav.dart';
import 'package:makanika/pages/mechanics.dart';
import 'package:makanika/pages/provider.dart';
import 'package:makanika/pages/servicespage.dart';
import 'package:makanika/starter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Provider(),
    );
  }
}
