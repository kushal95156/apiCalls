import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  List imag = [
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
    {'image': 'https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.red,
                Colors.yellowAccent,
                Colors.purpleAccent,
                Colors.purple,
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Instagram',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 10, right: 10, bottom: 8),
                  child: Container(
                    height: 50,
                    width: 300,
                    color: Colors.transparent,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'phoneNumber,email or UserId',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent))),
                      onChanged: (value) {
                        setState(() {
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 3, left: 10, right: 10, bottom: 8),
                  child: Container(
                    height: 50,
                    width: 300,
                    color: Colors.transparent,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      onChanged: (value) {
                        setState(() {
                        });
                      },
                    ),
                  ),
                ),
                CupertinoButton(color: Colors.blue,
                    child: Text('Login',style: TextStyle(color: Colors.white)), onPressed: (){
                      setState(() {

                      });
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
