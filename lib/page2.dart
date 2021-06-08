import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  var usia;
  var jk;
  SecondScreen({this.usia, this.jk});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // Variable
  var _usia;
  var _jk;
  var _hasil1;

// Method customize
  @override
  void initState() {
    _usia = widget.usia;
    _jk = widget.jk;
    super.initState();
  }

// Controller
  TextEditingController controllerBB = new TextEditingController();

  String hitung1() {
    _hasil1 = _usia * 2 + 8;
    return "$_hasil1";
  }

  @override
  Widget build(BuildContext context) {
    // Widget Customize
    Widget buildTextFieldBB(String judul, placeholder, IconData icon) {
      if (judul.isEmpty) return null;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: TextField(
              controller: controllerBB,
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    icon,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: placeholder,
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          )
        ],
      );
    }

    Widget buildTextFieldTT(String judul, placeholder, IconData icon) {
      if (judul.isEmpty) return null;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ]),
            height: 60,
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    icon,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: placeholder,
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          )
        ],
      );
    }

    Widget buildSubmitButton() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _hasil1 = (int.parse(controllerBB.text) / _usia * 2) + 8;
              // print(_hasil1);
            });
          },
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Wrap(
            children: [
              Text(
                "PROSES PERHITUNGAN",
                style: TextStyle(
                    color: Color(0xff5ac18e),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.rocket,
                color: Color(0xff5ac18e),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0x665ac18e),
                    Color(0x995ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff5ac18e)
                  ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ayo DEDIS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    buildTextFieldBB("Berat Badan", "Masukan dalam satuan Kg",
                        FontAwesomeIcons.weight),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff5ac18e),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        (_hasil1 == null) ? '' : "$_hasil1",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildTextFieldTT(
                        "Tinggi Badan",
                        "Silahakan tinggi anda dalam satuan Cm ",
                        FontAwesomeIcons.rulerCombined),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xff5ac18e),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2))
                          ]),
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        _jk,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buildSubmitButton()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
