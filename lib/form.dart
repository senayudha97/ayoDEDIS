import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class ProsesData extends StatefulWidget {
  String coba = 'test';
  ProsesData({this.coba});

  @override
  _ProsesDataState createState() => _ProsesDataState();
}

class _ProsesDataState extends State<ProsesData> {
  // ignore: non_constant_identifier_names
  dynamic Hasil1 = "Hasil Perhitungan";
  // ignore: non_constant_identifier_names
  dynamic Hasil2 = "Hasil Perhitungan";

  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String judul, placeholder, IconData icon) {
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
          onPressed: () => {print(ProsesData().coba)},
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

    // ignore: unused_element
    Widget buildSignUpButton() {
      return GestureDetector(
        onTap: () => print("Sign Up Pressed"),
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: ' Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ])),
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
                    buildTextField("Berat Badan", "Masukan dalam satuan Kg",
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
                        "Hold var hasil 1",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    buildTextField(
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
                        "Hold var hasil 2",
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

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
