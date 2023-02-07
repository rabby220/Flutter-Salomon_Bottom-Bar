import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.more_vert),
          ],
          elevation: 5.0,
          shadowColor: Colors.pink,
          backgroundColor: Colors.pink,
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
                child: Center(
                  child: Text("Hello User...!"),
                ),
              ),
              ListTile(
                //tileColor: Colors.pink,
                title: Text("Home"),
                leading: Icon(Icons.home_filled),
              ),
              ListTile(
                title: Text("Search"),
                leading: Icon(Icons.search),
              ),
              ListTile(
                title: Text("Favorite"),
                leading: Icon(Icons.favorite_border),
              ),
              ListTile(
                title: Text("Person"),
                leading: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
