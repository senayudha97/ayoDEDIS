import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Variable
  // ignore: unused_field
  var _usia;
  // ignore: unused_field
  var _jk;
  var _nilaiBMI;
  // ignore: unused_field
  var _decissionBMI;

// Method customize
  void _hitungBMI(var bb, var tt) {
    setState(() {
      _nilaiBMI = bb / ((tt / 100) * (tt / 100));

      if (_nilaiBMI < 18.5) {
        _decissionBMI = "BMI : Kurus";
      } else if (_nilaiBMI > 18.5 && _nilaiBMI < 25.0) {
        _decissionBMI = "BMI : Normal";
      } else if (_nilaiBMI > 25.0 && _nilaiBMI < 27.0) {
        _decissionBMI = "BMI : Kelebihan BB Tingkat Ringan";
      } else if (_nilaiBMI > 27.0) {
        _decissionBMI = "BMI : Kelebihan BB Tingkat Berat";
      }
    });
  }

// Controller
  TextEditingController controllerBB = new TextEditingController();
  TextEditingController controllerTT = new TextEditingController();
  TextEditingController controllerUsia = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Widget Customize
    Widget buildTextFieldUsia(String judul, placeholder, IconData icon) {
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
              controller: controllerUsia,
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
              controller: controllerTT,
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
            _hitungBMI(double.parse(controllerBB.text),
                double.parse(controllerTT.text));
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
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
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
                      height: 30,
                    ),
                    buildTextFieldUsia(
                        "Usia", "Masukan usia anda", FontAwesomeIcons.userAlt),
                    SizedBox(
                      height: 20,
                    ),
                    buildTextFieldBB("Berat Badan", "Masukan dalam satuan Kg",
                        FontAwesomeIcons.weight),
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
                        "$_nilaiBMI",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
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
                        "$_decissionBMI",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
