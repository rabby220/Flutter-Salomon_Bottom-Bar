import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'bottom_bar/favorite_page.dart';
import 'bottom_bar/home_page.dart';
import 'bottom_bar/person_page.dart';
import 'bottom_bar/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var currentIndex = 0;
  var pages = const[
    HomePage(),
    SearchPage(),
    FavoritePage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Favorite"),
              selectedColor: Colors.blue,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Person"),
              selectedColor: Colors.teal,
            ),
          ],
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex],
      ),
    );
  }
}
