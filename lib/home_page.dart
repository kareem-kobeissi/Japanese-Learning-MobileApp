import 'package:flutter/material.dart';
import 'package:toku/colors_page.dart';
import 'package:toku/family_members_page.dart';
import 'package:toku/numbers_page.dart';
import 'package:toku/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NumbersPage(),
                ),
              );
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FamilyMembersPage(),
                ),
              );
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ColorsPage(),
                ),
              );
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PhrasesPage(),
                ),
              );
            },
            text: 'Phrases',
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  Category({
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
