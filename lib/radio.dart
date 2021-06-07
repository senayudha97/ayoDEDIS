import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _jk = "";

  void _pilihJK(String value) {
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Container(
                    color: Colors.red,
                    child: Text('coba'),
                  ),
                ),
              ],
            ),
            Radio(
                value: "L",
                groupValue: _jk,
                onChanged: (String value) {
                  _pilihJK(value);
                }),
            Radio(
                value: "P",
                groupValue: _jk,
                onChanged: (String value) {
                  _pilihJK(value);
                }),
          ],
        ),
      ),
    );
  }
}
