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
        style: TextStyle(
              color: Colors.brown,
            ),
          ),
          backgroundColor: const Color(0xFF03fcb1),
          ),
    );
  }
} 