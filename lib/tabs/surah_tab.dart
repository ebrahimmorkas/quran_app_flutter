import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class SurahTab extends StatefulWidget {
  const SurahTab({super.key});

  @override
  State<SurahTab> createState() => _SurahTabState();
}

class _SurahTabState extends State<SurahTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: SingleChildScrollView(
        child: Column(
            children: List.generate(
                114,
                (index) => Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: () {},
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
                        // child: Text('Juz ${index+1}')
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${index + 1} ${quran.getSurahNameEnglish(index + 1)}',
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              quran.getSurahNameArabic(index + 1),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ))))),
      ),
    );
  }
}
