import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:puskesmas_nganjuk2/pages/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(milliseconds: 3000), () {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const Login()));
      Navigator.pushReplacementNamed(context, "/login");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logodinas.png"),
                Container(
                  margin: EdgeInsets.only(left: 6, right: 6),
                  child: Text(
                    "Klinik Giri Husada",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Image.asset("assets/images/logopuskesmas.png"),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset("assets/images/ilustrasi.png"),
            ),
          ],
        ))

        //your widgets here...
      ],
    ));
  }
}

// class _Splash extends State<Splashscreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
// }
