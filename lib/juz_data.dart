import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
class JuzData extends StatelessWidget {
  final List surahNumbers;
  final List surahVerses;
  final int i;
  JuzData(this.surahNumbers, this.surahVerses, this.i, {super.key});
  List juz = []; 
  
  @override
  Widget build(context) {
    
    // return ListView.builder(
    //   // itemCount: quran.getVerseCount(surahNumbers[i]),
    //   itemCount: 2,
    //   itemBuilder: (context,  index) {
    //     return const ListTile(
    //       title: Text("Hello World"),
    //     );
    //   }
        
    // );
    // return const Text("hi");
    // print(surahNumbers);
    // print(surahVerses);
    // print(surahVerses[0][1]);
    // print(surahVerses[0][0]);

    for(var i =0; i < surahNumbers.length ;  i++) {
      for(var j =surahVerses[i][0]; j <= surahVerses[i][1]; j++) {
        juz.add(quran.getVerse(surahNumbers[i], j,verseEndSymbol: true));
      }
    }
    return Column(
      children: [
        for(var verse in juz)
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
        child: Text(
            verse,
            textAlign: TextAlign.right
            )
        )
      ],
    );
  }
}