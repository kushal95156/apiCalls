import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List name = [
    {
      'name': 'kushal',
    },
    {
      'name': 'kumar',
    },
    {
      'name': 'korapati',
    },
    {
      'name': 'hdd',
    },
    {
      'name': 'jdiod',
    },
    {
      'name': 'djwodk',
    },
    {
      'name': 'wldwok',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: name
            .map((e) => Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${e['name']}',
                        style: TextStyle(color: Colors.green)),
                  ),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                ))
            .toList(),
      ),
    );
  }
}
