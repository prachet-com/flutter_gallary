import 'package:flutter/material.dart';
import 'package:flutter_gallary/buttons/buttons-demo.dart';
import 'package:flutter_gallary/homepage.dart';
import 'package:flutter_gallary/layout/expansionPanelDemo.dart';
import 'package:flutter_gallary/layout/scrollbarDemo.dart';
import 'package:flutter_gallary/layout/youtube_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            primary: Color.fromRGBO(145, 179, 50, 1),
            onPrimary: Colors.white,
            shadowColor: Color.fromRGBO(231, 252, 179, 1),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Color.fromRGBO(145, 179, 50, 1),
            backgroundColor: Color.fromRGBO(231, 252, 179, 1),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            side: BorderSide(
              width: 1.0,
              color: Color.fromRGBO(145, 179, 50, 1),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Color.fromRGBO(145, 179, 50, 1),
            backgroundColor: Color.fromRGBO(231, 252, 179, 1),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          )
        )
      ),
      home: HomepageScreen(),
      routes: {
        ScrollbarDemo.routeName: (ctx) => ScrollbarDemo(),
        // ExpansionPanelDemo.routeName: (ctx) => ExpansionPanelDemo(),
        ButtonsDemoScreen.routeName: (ctx) => ButtonsDemoScreen(),
        YoutubeAppDemo.routeName:(ctx)=>YoutubeAppDemo()
      },
    );
  }
}
