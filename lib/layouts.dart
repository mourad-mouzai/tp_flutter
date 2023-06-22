import 'package:first_project/pages/home_page.dart';
import 'package:first_project/widgets/app_bar_general.dart';
import 'package:first_project/widgets/drawer_general.dart';
import 'package:flutter/material.dart';

class PagesLayout extends StatefulWidget {
  const PagesLayout({super.key});

  @override
  State<PagesLayout> createState() => _PagesLayoutState();
}

class _PagesLayoutState extends State<PagesLayout> {
  int _selectedIndex = 0;

  // int? _selectedIndex;
  // late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 15;
  }

  @override
  void dispose() {
    super.dispose();
  }

  func() {
    setState(() {
      _selectedIndex = _selectedIndex + 1;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGen(),
      drawer: const DrawerGen(),
      body: Container(
        color: const Color(0xFFF3F3F1),
        padding: const EdgeInsets.all(20),
        child: const HomePage(),
      ),

      // Center(
      //   child: Text(
      //     !_selectedIndex.isNull ? '$_selectedIndex' : "__",
      //     style: const TextStyle(
      //       fontSize: 24,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: func, // setState(),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
