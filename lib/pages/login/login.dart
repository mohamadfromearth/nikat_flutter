import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter demo"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100.0,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                icon: Icon(
                  CupertinoIcons.mail,
                  size: 20.0,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password", icon: Icon(CupertinoIcons.lock)),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                child: MaterialButton(
                  onPressed: () => {},
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Create an acount"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
