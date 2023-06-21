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
      _selectedIndex++;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarGeneral(context),
      drawer: DrowerGeneral(context),
      body: Center(
        child: Text(
          '$_selectedIndex',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: func, // setState(),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
