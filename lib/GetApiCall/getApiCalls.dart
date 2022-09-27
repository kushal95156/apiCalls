import 'package:flutter/material.dart';
import 'package:nnnapp/AppState/AppStateOne.dart';

import '../Model/modelClassOne.dart';

class GetApiCall extends StatefulWidget {
  const GetApiCall({Key? key}) : super(key: key);

  @override
  State<GetApiCall> createState() => _GetApiCallState();
}

class _GetApiCallState extends State<GetApiCall> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      getData();
    });
    super.initState();
  }

  GettingMyData? Data;

  Future getData() async {
    final MyData = await AppState().gettingData();
    setState(() {
      Data = MyData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Data?.data != null
          ? Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: Data!.data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          tileColor: Colors.green,
                          title: Text(Data!.data[index].firstName,
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text(Data!.data[index].email,
                              style: TextStyle(color: Colors.white)),
                          leading: Text('${Data!.data[index].id}',
                              style: TextStyle(color: Colors.white)),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                Data!.data.removeAt(index);
                              });
                            },
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
