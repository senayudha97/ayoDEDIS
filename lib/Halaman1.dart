import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Hal1 extends StatefulWidget {
  @override
  _Hal1State createState() => _Hal1State();
}

class _Hal1State extends State<Hal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0x665ac18e),
          Color(0x995ac18e),
          Color(0xcc5ac18e),
          Color(0xff5ac18e)
        ], begin: Alignment.topRight, end: Alignment.centerRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 46, horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ayo DEDIS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 46,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Keterangan :",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "Pengertian Stunting :",
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Stunting adalah masalah gizi kronis yang disebabkan oleh asupan gizi kurang dalam waktu yang cukup lama dan disebabkan pemberian makanan tidak sesuai maupun seimbang dengan kebutuhan gizi pada anak. Stunting dapat terjadi ketika anak masih dalam kandungan dan baru kelihatan saat anak berusia dua tahun. Kekurangan gizi pada anak usia dini meningkatkan angka kematian bayi dan anak, mudah sakit dan memiliki postur tubuh kurang ideal saat dewasa, kemampuan kognitif kurang , sehingga mengakibatkan penurunan kesejahteraan jangka panjang bagi bangsa(Kesehatan et al., 2020). ",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
