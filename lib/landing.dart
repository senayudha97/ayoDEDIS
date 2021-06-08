import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'form.dart';
import 'page2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//  Variable
  bool isRememberMe = false;
  String _jk = "";

// Controller
  TextEditingController controllerUsia = new TextEditingController();

// Customize Function
  void _pilihJK(String value) {
    setState(() {
      _jk = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Start Holder Widget
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

    // ignore: unused_element
    Widget buildEmail() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
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
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          )
        ],
      );
    }

    // ignore: unused_element
    Widget buildPassword() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
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
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff5ac18e),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black38)),
            ),
          )
        ],
      );
    }

    // ignore: unused_element
    Widget buildForgotPassword() {
      return Container(
        alignment: Alignment.centerRight,
        // ignore: deprecated_member_use
        child: FlatButton(
            onPressed: () => print("Forgot Password Pressed"),
            padding: EdgeInsets.only(right: 0),
            child: Text(
              "Forgot Password ?",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
      );
    }

    // ignore: unused_element
    Widget buildRemeberCb() {
      return Container(
        height: 20,
        child: Row(
          children: [
            Theme(
                data: ThemeData(unselectedWidgetColor: Colors.white),
                child: Checkbox(
                  value: isRememberMe,
                  checkColor: Colors.green,
                  activeColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      print(value);
                      isRememberMe = value;
                    });
                  },
                )),
            Text(
              'Remember Me',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
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

    Widget buildSubmitButton() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        width: double.infinity,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondScreen(
                        // coba: controllerTxt.text,
                        usia: int.parse(controllerUsia.text), jk: _jk,
                      )),
            );
          },
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Wrap(
            children: [
              Text(
                "PROSES",
                style: TextStyle(
                    color: Color(0xff5ac18e),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.send,
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
                    buildTextField(
                        "Usia", "Silahakan Masukan Usia Anda ", Icons.person),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jenis Kelamin",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 165,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff5ac18e),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 6,
                                              offset: Offset(0, 2))
                                        ]),
                                    child: Row(
                                      children: [
                                        Radio(
                                            value: "L",
                                            groupValue: _jk,
                                            activeColor: Colors.white,
                                            onChanged: (String value) {
                                              print(value);
                                              setState(() {
                                                _pilihJK(value);
                                              });
                                            }),
                                        Text(
                                          "Laki-Laki",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 165,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff5ac18e),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 6,
                                              offset: Offset(0, 2))
                                        ]),
                                    child: Row(
                                      children: [
                                        Radio(
                                            value: "P",
                                            groupValue: _jk,
                                            activeColor: Colors.white,
                                            onChanged: (String value) {
                                              print(value);
                                              setState(() {
                                                _pilihJK(value);
                                              });
                                            }),
                                        Text(
                                          "Perempuan",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
