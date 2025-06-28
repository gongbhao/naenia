import 'package:flutter/material.dart';
import 'package:naenia/assets/const.dart';
import 'package:naenia/views/home.dart';
import 'package:naenia/views/search.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Naenia',
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[Home(), Search()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naenia", style: TEXT_APPBAR),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset('lib/assets/logo.jpg', height: 20, width: 20),
        ),
      ),
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        unselectedLabelStyle: TextStyle(color: COLOR_GREY),
        unselectedIconTheme: IconThemeData(color: COLOR_GREY),
        selectedIconTheme: IconThemeData(color: COLOR_PRIMARY),
        selectedLabelStyle: TextStyle(color: COLOR_PRIMARY),
      ),
    );
  }
}
