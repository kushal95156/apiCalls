import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nnnapp/MyApp/loginPage/homeScreenInsta.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String verifiedEmail = 'kushal';
  String verifiedPassword = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 800,
        color: Colors.black,
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
                color: Colors.grey,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'phoneNumber,email or UserId',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  onChanged: (value) {
                    setState(() {
                      email = value;
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
                color: Colors.grey,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
            ),
            CupertinoButton(color: Colors.blue,
                child: Text('Login',style: TextStyle(color: Colors.white)), onPressed: (){
              setState(() {
                if(email!=verifiedEmail){
                  print('wrong email');
                  var Snackbar=SnackBar(content: Text('wrong email'));
                  ScaffoldMessenger.of(context).showSnackBar(Snackbar);
                }
                else if(password!=verifiedPassword){
                  print('wrong password');
                  var Snackbar=SnackBar(content: Text('wrongpassword'));
                  ScaffoldMessenger.of(context).showSnackBar(Snackbar);
                }else{
                  Navigator.push(context, CupertinoPageRoute(builder: (context) =>HomeScreenInsta() ,));
                }
              });
            }),
          ],
        ),
      ),
    );
  }
}
