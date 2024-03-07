import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quran_app/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        )
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                // gradient: LinearGradient(colors: [Color(0xFF03fcb1)])
                gradient: LinearGradient(colors: [Color.fromRGBO(3, 252, 177, 1),Color.fromARGB(228, 26, 243, 178)])),
                // gradient: LinearGradient(colors: [Colors.black, Colors.blue])),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('../images/quran-logo.png'),
                  const SizedBox(height: 50),
                  const Text('HOLY QURAN',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 35,
                        fontFamily: AutofillHints.countryCode,
                      )
                      ),
                ],
              ),
            )));
  }
}
