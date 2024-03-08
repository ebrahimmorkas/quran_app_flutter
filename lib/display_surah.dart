import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class DisplaySurah extends StatefulWidget {
  final int surahNumber;
  const DisplaySurah(this.surahNumber, {super.key});
  @override
  State<DisplaySurah> createState() => _DisplaySurahState();
}

class _DisplaySurahState extends State<DisplaySurah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.surahNumber}',
          style: const TextStyle(
            color: Colors.brown,
          ),
        ),
        backgroundColor: const Color(0xFF03fcb1),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Container(
            color: const Color(0xFF03fcb1), // Background color
            child: ListView.builder(
              itemCount: quran.getVerseCount(widget.surahNumber),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    quran.getVerse(widget.surahNumber, index + 1, verseEndSymbol: true),
                    textAlign: TextAlign.right,
                    style: const TextStyle(color: Colors.brown), // Foreground color
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
