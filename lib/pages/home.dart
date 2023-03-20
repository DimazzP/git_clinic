import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:puskesmas_nganjuk2/others/colorThemes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final incolor = AppColors();
    var headmedium = Theme.of(context).textTheme.headlineMedium;

    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selamat Datang",
                style: TextStyle(
                  color: incolor.cgrey,
                  fontSize: 14,
                ),
              ),
              Text(
                "Budiyono Astaman",
                style: TextStyle(
                    color: incolor.cblack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ]),
        backgroundColor: Color(0xffF1F1F1),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(14),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    "Silahkan Pilih Layanan",
                    style: TextStyle(
                      color: incolor.cblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {
                                  Navigator.of(context).pushNamed("/queue");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  padding: EdgeInsets.all(6),
                                  // decoration: BoxDecoration(boxShadow: <BoxShadow>[
                                  //   BoxShadow(
                                  //     color: incolor.cgrey,
                                  //     blurRadius: 2.0,
                                  //     offset: Offset(0, 0.75),
                                  //   ),
                                  // ], color: Colors.white),
                                  child: Container(
                                    width: 110,
                                    height: 130,
                                    child: Column(children: [
                                      Image.asset(
                                        "assets/images/heart.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Expanded(
                                          child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "Pelayanan Gawat Darurat",
                                                textAlign: TextAlign.center,
                                                style: headmedium,
                                              )))
                                    ]),
                                  ),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    width: 110,
                                    height: 130,
                                    child: Column(children: [
                                      Image.asset(
                                        "assets/images/balita.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Expanded(
                                          child: Container(
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "Pelayanan Balita Sakit",
                                                textAlign: TextAlign.center,
                                                style: headmedium,
                                              )))
                                    ]),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    width: 110,
                                    height: 130,
                                    child: Column(children: [
                                      Image.asset(
                                        "assets/images/tbc.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "Pelayanan TBC",
                                                textAlign: TextAlign.center,
                                                style: headmedium,
                                              )))
                                    ]),
                                  ),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    width: 110,
                                    height: 130,
                                    child: Column(children: [
                                      Image.asset(
                                        "assets/images/gizi.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "Konsultasi Gizi",
                                                textAlign: TextAlign.center,
                                                style: headmedium,
                                              ))),
                                    ]),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        padding: EdgeInsets.only(bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    width: 110,
                                    height: 130,
                                    child: Column(children: [
                                      Image.asset(
                                        "assets/images/imunisasi.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "Pelayanan Imunisasi",
                                                textAlign: TextAlign.center,
                                                style: headmedium,
                                              )))
                                    ]),
                                  ),
                                )),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  padding: EdgeInsets.all(6),
                                  child: Container(
                                    width: 110,
                                    height: 130,
                                    child: Column(children: [
                                      Image.asset(
                                        "assets/images/gigi.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.only(top: 8),
                                              child: Text(
                                                "Pelayanan Gigi dan Mulut",
                                                textAlign: TextAlign.center,
                                                style: headmedium,
                                              ))),
                                    ]),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ]))
              ]),
        ),
      ),
    );
  }
}
