import 'package:flutter/material.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/contact.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/pages/skills.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreeState();
}

class _HomeScreeState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  int currPage = 0;
  final List<Widget> _pages = [
    Home(),
    About(),
    Skills(),
    Projects(),
    Contact(),
  ];

  final List<BottomNavigationBarItem> _navItems = const [
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.home),
      icon: Icon(Icons.home_filled),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.person),
      icon: Icon(Icons.person_2_outlined),
      label: 'About',
    ),
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.psychology),
      icon: Icon(Icons.psychology_alt_outlined),
      label: 'Skills',
    ),
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.category),
      icon: Icon(Icons.category_outlined),
      label: 'Projects',
    ),
    BottomNavigationBarItem(
      activeIcon: Icon(Icons.mail),
      icon: Icon(Icons.mail_outline_rounded),
      label: 'Contact',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.white,
        title:  Text(
          "My Portfolio",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 53, 87, 237),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey.shade700,
        backgroundColor: Colors.white,
        currentIndex: currPage,
        items: _navItems,
        onTap: (index) {
          setState(() {
            currPage = index;
          });
        },
      ),
      backgroundColor: Colors.grey.shade50,
      body: _pages[currPage],
    );
  }
}
