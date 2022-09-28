import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         height: 600,
         width: 390,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Screenshot_1661233157.png')
            )
          ),
        ),
      ),
    );
  }
}
