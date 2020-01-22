import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './auth_screen.dart';
import './model.dart';
import './home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Conditions(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Weather Station",
        theme: ThemeData(
          primaryColor: Colors.blue[900],
          accentColor: Colors.purpleAccent,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            body1: TextStyle(
              color: Colors.blue[900],
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
            body2: TextStyle(
              color: Colors.blue[900],
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ),
        routes: {
          '/' : (ctx) => AuthScreen(),
          HomePage.routeName : (ctx) => HomePage(),
        },
      ),
    );
  }
}