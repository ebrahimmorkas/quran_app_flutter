import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran_app/juz_data.dart';

class DisplayJuz extends StatefulWidget {
  final int juzNumber;
  const DisplayJuz(this.juzNumber, {super.key});

  @override
  State<DisplayJuz> createState() => _DisplayJuzState();
}

class _DisplayJuzState extends State<DisplayJuz> {
  @override
  Widget build(BuildContext context) {
    Map<int, List<int>> surahAndVersesInJuz = quran.getSurahAndVersesFromJuz(widget.juzNumber);
    List surahNumbers = surahAndVersesInJuz.keys.toList();
    List surahVerses = surahAndVersesInJuz.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.juzNumber}',
          style: const TextStyle(
            color: Colors.brown,
          ),
        ),
        backgroundColor: const Color(0xFF03fcb1),
      ),
      body: SafeArea(
        // surahAndVersesInJuz.map((key, value) => ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            color: const Color(0xFF03fcb1), // Background color
            child: SingleChildScrollView(
              child: Column(
              children: [
              for(var i =0; i<2; i++) 
                JuzData(surahNumbers, surahVerses, i)
            ]
            ),
            ),
          ),
        ),
      ),
    );
  }
}
