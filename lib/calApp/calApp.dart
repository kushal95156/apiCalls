import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CallApp extends StatefulWidget {
  const CallApp({Key? key}) : super(key: key);

  @override
  State<CallApp> createState() => _CallAppState();
}

class _CallAppState extends State<CallApp> {
  String firstNumber='';
  String secondNumber='';
  String response='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 100,
                child: TextField(
                  onChanged: (value) {
                    firstNumber=value;
                  },
                ),
              ),
              Container(
                height: 50,
                width: 100,
                child: TextField(
                  onChanged: (value) {
                    secondNumber=value;
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 70,
                child: CupertinoButton(
                  child: Text('+'),
                  onPressed: () {
                    setState(() {
                      response=(int.parse(firstNumber) +int.parse(secondNumber)).toString();
                    });
                  },
                ),
              ),
              Container(
                width: 100,
                height: 70,
                child: CupertinoButton(
                  child: Text('-'),
                  onPressed: () {
                    setState(() {
                      response=(int.parse(firstNumber) -int.parse(secondNumber)).toString();
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 70,
                child: CupertinoButton(
                  child: Text('x'),
                  onPressed: () {
                    setState(() {
                      response=(int.parse(firstNumber) *int.parse(secondNumber)).toString();
                    });
                  },
                ),
              ),
              Container(
                width: 100,
                height: 70,
                child: CupertinoButton(
                  child: Text('/'),
                  onPressed: () {
                    setState(() {
                      response=(int.parse(firstNumber) /int.parse(secondNumber)).toString();
                    });
                  },
                ),
              ),
            ],
          ),
          Center(
            child: Row(
              children: [
                Text('ANS :',style: TextStyle(color: Colors.black)),
                Text(response,style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
