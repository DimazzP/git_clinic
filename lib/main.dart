import 'package:flutter/material.dart';
import 'package:puskesmas_nganjuk2/others/pcolor.dart';
import 'package:puskesmas_nganjuk2/pages/bottom_view.dart';
import 'package:puskesmas_nganjuk2/pages/home.dart';
import 'package:puskesmas_nganjuk2/pages/login.dart';
import 'package:puskesmas_nganjuk2/pages/queue_message.dart';
import 'package:puskesmas_nganjuk2/pages/register.dart';
import 'package:puskesmas_nganjuk2/pages/splashscreen.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xfff1f1f1),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "nunito-r",
        primaryColor: Color(0xff3FBBC0),
        primarySwatch: Palette.pcolor,
        textTheme: TextTheme(
          headlineSmall: const TextStyle(
            color: Color(0xff282828),
            fontSize: 12,
            fontFamily: "nunito-b",
            // fontWeight: FontWeight.w600,
          ),
          headlineMedium: const TextStyle(
            color: Color(0xff282828),
            fontSize: 14,
            fontFamily: "nunito-b",
            // fontWeight: FontWeight.w600,
          ),
          headlineLarge: const TextStyle(
            color: Color(0xff282828),
            fontSize: 18,
            fontFamily: "nunito-b",
            // fontWeight: FontWeight.w600,
          ),
          bodySmall: const TextStyle(
            color: Color(0xff282828),
            fontSize: 12,
            fontFamily: "nunito-r",
          ),
          bodyMedium: const TextStyle(
            color: Color(0xff282828),
            fontSize: 14,
            fontFamily: "nunito-r",
          ),
          bodyLarge: const TextStyle(
            color: Color(0xff282828),
            fontSize: 18,
            fontFamily: "nunito-r",
          ),
          displaySmall: const TextStyle(
            color: Color(0xff282828),
            fontSize: 12,
            fontFamily: "nunito-m",
          ),
          displayMedium: const TextStyle(
            color: Color(0xff282828),
            fontSize: 14,
            fontFamily: "nunito-m",
          ),
          displayLarge: const TextStyle(
            color: Color(0xff282828),
            fontSize: 18,
            fontFamily: "nunito-m",
          ),
          labelSmall: const TextStyle(
            color: Color(0xff5f5f5f),
            fontSize: 12,
            fontFamily: "nunito-m",
            letterSpacing: 1,
            wordSpacing: 0,
          ),
          labelMedium: const TextStyle(
            color: Color(0xff5f5f5f),
            fontSize: 14,
            fontFamily: "nunito-m",
          ),
          labelLarge: const TextStyle(
            color: Color(0xff5f5f5f),
            fontSize: 18,
            fontFamily: "nunito-m",
          ),
          titleLarge: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 20,
            fontFamily: "nunito-b",
          ),
        ),
      ),
      home: Splashscreen(),
      routes: {
        '/splashscreen': (context) => Splashscreen(),
        '/login': (context) => const Login(),
        '/home': (context) => const HomePage(),
        '/queue': (context) => const QueuePage(),
        '/bottom_view': (context) => const BottomViews(),
        '/register': (context) => const Register(),
      },
    );
  }
}