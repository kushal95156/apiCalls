import 'package:flutter/material.dart';
import 'package:nnnapp/MyApp/loginPage/favScreen.dart';
import 'package:nnnapp/MyApp/loginPage/feedScreen.dart';
import 'package:nnnapp/MyApp/loginPage/profileScreen.dart';
import 'package:nnnapp/MyApp/loginPage/reelsScreen.dart';
import 'package:nnnapp/MyApp/loginPage/searchScreen.dart';

class HomeScreenInsta extends StatefulWidget {
  const HomeScreenInsta({Key? key}) : super(key: key);

  @override
  State<HomeScreenInsta> createState() => _HomeScreenInstaState();
}

class _HomeScreenInstaState extends State<HomeScreenInsta> {
  List screens=[
    FeedScreen(),
    SearchScreen(),
    ReelsScreen(),
    FavScreen(),
    ProfileScreen()
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:index,
        onTap: (value) {
          setState(() {
            index=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: '',activeIcon: Icon(Icons.home,color: Colors.black),),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.black),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black),label: ''),
          BottomNavigationBarItem(icon: CircleAvatar(child: Image(image: AssetImage('assets/images/Screenshot_1661233157.png'),)),label: ''),
        ],
      ),
      body: screens[index],
    );
  }
}
