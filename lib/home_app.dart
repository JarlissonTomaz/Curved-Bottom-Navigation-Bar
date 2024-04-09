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
        buttonBackgroundColor: const Color.fromARGB(255, 102, 112, 219),
        color: const Color.fromARGB(255, 18, 18, 18),
        animationDuration: const Duration(milliseconds: 300),
        iconPadding: 15,
        index: page,
        items: [
          CurvedNavigationBarItem(
            child: SizedBox(
                height: 30,
                child: Image.asset(
                  'lib/icons/fi-rr-home.png',
                  color: page == 0
                      ? Colors.white
                      : const Color.fromARGB(255, 59, 64, 87),
                )),
          ),
          CurvedNavigationBarItem(
            child: SizedBox(
                height: 30,
                child: Image.asset(
                  'lib/icons/fi-rr-chart-pie-alt.png',
                  color: page == 1
                      ? Colors.white
                      : const Color.fromARGB(255, 59, 64, 87),
                )),
          ),
          CurvedNavigationBarItem(
            child: SizedBox(
                height: 30,
                child: Image.asset(
                  'lib/icons/fi-rr-clock.png',
                  color: page == 2
                      ? Colors.white
                      : const Color.fromARGB(255, 59, 64, 87),
                )),
          ),
          CurvedNavigationBarItem(
            child: SizedBox(
                height: 30,
                child: Image.asset(
                  'lib/icons/fi-rr-bell.png',
                  color: page == 3
                      ? Colors.white
                      : const Color.fromARGB(255, 59, 64, 87),
                )),
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
