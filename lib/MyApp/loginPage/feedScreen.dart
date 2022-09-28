import 'package:flutter/material.dart';
import 'package:nnnapp/MyApp/loginPage/imageScreen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
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
      appBar: PreferredSize(
        preferredSize: Size(300, 50),
        child: AppBar(
          leading: Icon(Icons.add_box_outlined,color: Colors.white),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Instagram',
              style: TextStyle(
                  color: Colors.white, backgroundColor: Colors.black)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_rounded,
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: story
                  .map((e) => Container(
                        height: 70,
                        width: 90,
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ImageScreenII(image: '${e['image']}'),
                                  ));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage('${e['image']}'),
                              ),
                            )),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
