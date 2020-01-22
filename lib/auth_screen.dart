import 'package:flutter/material.dart';

import './my_button.dart';

class AuthScreen extends StatelessWidget {

  static const roueName = '/';
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        Image.asset(
          'images/background_2.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Card(
              color: Colors.black54,
              elevation: 10,
              margin: EdgeInsets.all(15),
              child: Container(
                height: 280,
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Text(
                      "TEAM COMPLEXITY",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    TextField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      decoration: InputDecoration(
                        labelText: "Enter your Firebase URL here!",
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Theme.of(context).primaryColor,
                        counterStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )
                      ),
                      cursorColor: Theme.of(context).primaryColor,
                      controller: textEditingController,
                    ),
                    SizedBox(height: 20),
                    MyButton(textEditingController),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

}