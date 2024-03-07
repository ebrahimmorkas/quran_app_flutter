import 'package:flutter/material.dart';
import 'package:quran_app/cream_color.dart';

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
            Container(
              child: const Text('Tab 1'),
            ),
            Container(
              child: const Text('Tab 2'),
            ),
            Container(
              child: const Text('Tab 3'),
            )
          ],
        ),
      ),
    );
  }
}
