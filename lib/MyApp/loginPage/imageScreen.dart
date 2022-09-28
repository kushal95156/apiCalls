import 'package:flutter/cupertino.dart';

class ImageScreenII extends StatefulWidget {
  final String image;
  const ImageScreenII({Key? key, required this.image}) : super(key: key);

  @override
  State<ImageScreenII> createState() => _ImageScreenIIState();
}

class _ImageScreenIIState extends State<ImageScreenII> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('${widget.image}')
        )
      ),
    );
  }
}
