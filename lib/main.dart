import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieHomePage(),
    );
  }
}

class MovieHomePage extends StatefulWidget {
  const MovieHomePage({super.key});

  @override
  State<MovieHomePage> createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  final List<String> option = [
    "Horror",
    "Comedy",
    "Thriller",
    "Romantic",
    "Action",
    "Sci-Fi",
    "Drama",
    "Animated",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appbar(),
            options(),
            movieCards(),
            navigationBar(),
          ],
        ),
      ),
    );
  }

  Widget appbar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text("MOVIEHUT"),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded))
        ],
      ),
    );
  }

  Widget options() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30,
        margin: EdgeInsets.all(5.0),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: option.length,
          itemBuilder: (context, int index) {
            return ActionChip(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(width: 1, color: Colors.grey),
              ),
              onPressed: () {},
              label: Text(option[index]),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );
  }

  Widget movieCards() {
    return Container();
  }

  Widget navigationBar() {
    return Container();
  }
}
