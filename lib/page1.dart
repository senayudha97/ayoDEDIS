import 'package:flutter/material.dart';
import 'page2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: Column(
          children: [
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(
                            usia: 123,
                          )),
                );
              },
              child: Text("KIRIM DATA"),
            )
          ],
        ),
      ),
    );
  }
}
