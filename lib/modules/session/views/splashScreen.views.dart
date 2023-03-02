import 'package:application_de_liste_de_taches/modules/accueil/views/home.views.dart';
import 'package:flutter/material.dart';

class SplashScreenViews extends StatefulWidget {
  const SplashScreenViews({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenViewsState createState() => _SplashScreenViewsState();
}

class _SplashScreenViewsState extends State<SplashScreenViews> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeViews()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
