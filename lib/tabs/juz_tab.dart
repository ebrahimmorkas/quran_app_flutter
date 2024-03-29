import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/display_juz.dart';

class JuzTab extends StatefulWidget{
  @override
  _JuzTabState createState() => _JuzTabState();
}

class _JuzTabState extends State<JuzTab> {
  @override
  Widget build(context) {
    void getJuz(juzNumber) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DisplayJuz(juzNumber)
          )
      );
    }
    return Container(
              color: Colors.brown, 
            child:SingleChildScrollView(
              child: Column(
                children: List.generate(
                  30, 
                  (index) => Container(
                    margin: const EdgeInsets.all(10),
                  child:ElevatedButton(
                      onPressed: () {getJuz(index + 1);},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF03fcb1),
                        foregroundColor: Colors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Rounded corners
                        ),
                        padding: const EdgeInsets.all(20),
                        minimumSize: const Size(double.infinity, 0),
                      ),
                      child: Text('Juz ${index+1}')
                      )
                )
                )
              ),
            ),
            );
  }
}