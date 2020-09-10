import 'package:beautiful_app/home.dart';
import 'package:flutter/material.dart';
import 'stacked_icons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            new StackIcons(),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    "Hizli gonzalez",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                decoration: new InputDecoration(labelText: 'Email'),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            SizedBox(height: 10.0),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: Color(0xFF18D191),
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: new Text(
                          "Login",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      child: new Text(
                        "Forgot Password?",
                        style: new TextStyle(
                            fontSize: 18.0, color: Color(0xFF18D191)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: new Text(
                      'Create a new Account',
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF18D191),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
