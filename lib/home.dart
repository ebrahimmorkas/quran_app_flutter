import 'package:flutter/material.dart';
import 'package:quran_app/cream_color.dart';
import 'package:quran_app/tabs/juz_tab.dart';
import 'package:quran_app/tabs/surah_tab.dart';
import 'package:quran/quran.dart' as quran;


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quran',
            style: TextStyle(
              color: Colors.brown,
            ),
          ),
          backgroundColor: const Color(0xFF03fcb1),
          bottom: const TabBar(
            indicator: BoxDecoration(color: Colors.brown),
            labelColor: Color(0xFF03fcb1),
            tabs: <Widget>[
              Tab(
                text: "Juz",
              ),
              Tab(text: "Surah"),
              Tab(text: 'Bookmarks'),
            ],
          ),
        ),
        body: TabBarView( 
          children: [
            // Tab 1
              JuzTab(),
            // Tab 2,
            const SurahTab(),
            // Tab 3
            Container(
              child: const Text('Tab 3'),
            )
          ],
        ),
      ),
    );
  }
}
