import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './model.dart';
import './custom_card.dart';

class HomePage extends StatefulWidget {

  static const routeName = '/home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    Provider.of<Conditions>(context).setTemperature();
    Provider.of<Conditions>(context).setHumidty();
    List conditions = Provider.of<Conditions>(context).returnValues();

    return Stack(
      children: <Widget>[
        Image.asset(
          'images/background.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CustomCard(
                    conditions[0],
                    "Temperature",
                    Icon(
                    Icons.wb_sunny,
                    size: 120,
                    color: Colors.amber,
                    ),
                  ),
                  CustomCard(
                    conditions[1],
                    "Humidity",
                    Icon(
                    Icons.toys,
                    size: 120,
                    color: Colors.green,
                    ),
                  ),
                ],
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(10),
                elevation: 10,
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Connected to NodeMCU",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),    
        ),
      ],
    );
  }
}