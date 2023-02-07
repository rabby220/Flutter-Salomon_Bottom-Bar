import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.purple,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text("Flutter Tutorial"),
                centerTitle: true,
                background: Image.asset("assets/images/bg_two.jpg", fit: BoxFit.fill,),
              ),
            ),
           SliverList(delegate: SliverChildListDelegate([
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),
             addDetails("First App", "description"),

           ]))
          ],
        ),
      ),
    );
  }
}


Widget addDetails(
    String title,
    String description,
)
{
  return ListTile(
    title: Text(title),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(title[0]),
    ),
  );
}
