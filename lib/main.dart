import 'package:application_de_liste_de_taches/modules/session/views/splashScreen.views.dart';
import 'package:flutter/material.dart';

import 'modules/accueil/views/home.views.dart';
import 'modules/main.modules.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenViews(),
    );
  }
}
