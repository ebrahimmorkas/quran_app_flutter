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
            Container(
              color: Colors.brown, 
            child:SingleChildScrollView(
              child: Column(
                children: List.generate(
                  30, 
                  (index) => Container(
                    margin: const EdgeInsets.all(10),
                  child:ElevatedButton(
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
                      child: Text('Juz ${index+1}')
                      )
                )
                )
              ),
            ),
            ),
            // Tab 2,
            Container(
              child: const Text('Tab 2'),
            ),
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
