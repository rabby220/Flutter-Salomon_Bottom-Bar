import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int addValue = 0;

  increment() {
    setState(() {
      addValue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                margin: const EdgeInsets.all(20.0),
                width: 400,
                height: 220,
                alignment: Alignment.center,
                child: Text(
                  addValue.toString(),
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    increment();
                  },
                  child: const Text("Add")),
            ],
          ),
        ),
      ),
    );
  }
}
