import 'package:flutter/material.dart';
import 'package:swarp/navigations/bottom.dart';
import 'package:swarp/screens/barternow/barternow.dart';
import 'package:swarp/screens/delivery/delivery.dart';
import 'package:swarp/screens/details/details.dart';
import 'package:swarp/screens/getstarted/getstarted.dart';
import 'package:swarp/screens/login/login.dart';
import 'package:swarp/screens/onboarding/onboarding.dart';
import 'package:swarp/screens/profile/barterhistory/barterhistory.dart';
import 'package:swarp/screens/profile/settings/settings.dart';
import 'package:swarp/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swarp',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black))),
      home: Bottom(),
    );
  }
}
