import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 24, 39),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color.fromARGB(255, 40, 44, 219),
        color: const Color.fromARGB(255, 18, 18, 18),
        animationDuration: const Duration(milliseconds: 300),
        index: page,
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: page == 0 ? Colors.white : Colors.white30,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.pie_chart_outline,
              color: page == 1 ? Colors.white : Colors.white30,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.access_time_rounded,
              color: page == 2 ? Colors.white : Colors.white30,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.settings_outlined,
              color: page == 3 ? Colors.white : Colors.white30,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
      ),
      body: Center(
        child: Text(
          '$page',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
