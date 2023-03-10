import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbers',
              color: const Color(0xffEF9235),
            ),
            const SizedBox(
              height: 20,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              color: const Color(0xff558B37),
            ),
            const SizedBox(
              height: 20,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }));
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),
            const SizedBox(
              height: 20,
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              color: const Color(0xff50ADC7),
            ),
          ],
        ),
      ),
    );
  }
}
