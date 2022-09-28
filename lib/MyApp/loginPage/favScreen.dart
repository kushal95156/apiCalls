import 'package:flutter/material.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({Key? key}) : super(key: key);

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List story = [
    {
      'name': 'kushal',

    },
    {
      'name': 'kushal',
      'image':
      'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'
    },
    {
      'name': 'kushal',
      'image':
      'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'
    },
    {
      'name': 'kushal',
      'image':
      'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'
    },
    {
      'name': 'kushal',
      'image':
      'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:story.map((e) =>Container(
          child: Text('${e['name']}'),
        ) ).toList() ,
      ),
    );
  }
}
