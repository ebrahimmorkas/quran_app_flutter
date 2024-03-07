import 'package:flutter/material.dart';

class CreamColor extends StatelessWidget {
  const CreamColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

    decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [Color.fromRGBO(3, 252, 177, 1),Color.fromARGB(228, 26, 243, 178)])
    )
    );
  }
}