import 'package:flutter/material.dart';
import 'terimadata.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var a = '';
  @override
  Widget build(BuildContext context) {
    // Controller
    TextEditingController input1 = TextEditingController();
    TextEditingController input2 = TextEditingController();

    // Custom Widget
    Widget buildContainer(var teks) {
      return Container(
        color: Colors.indigo,
        margin: EdgeInsets.all(10),
        height: 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [Text(teks)],
        ),
      );
    }

    Widget buildTF(var ht, TextEditingController ctrl) {
      return TextField(
        controller: ctrl,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.home,
              color: Color(0xff5ac18e),
            ),
            hintText: ht,
            hintStyle: TextStyle(color: Colors.black38)),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.indigo,
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTF('input1', input1),
              buildTF('input2', input2),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    a = input1.text + input2.text;
                  });
                },
                child: Text("Test"),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Hal2(
                              a: input1.text,
                              b: input2.text,
                            )),
                  );
                },
                child: Text("KIRIM DATA"),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  (a == '') ? 'Data Kosong' : a,
                  style: TextStyle(fontSize: 50),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
