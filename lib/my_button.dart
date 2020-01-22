import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './model.dart';

class MyButton extends StatelessWidget {

  final TextEditingController textEditingController;

  MyButton(this.textEditingController);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Connect",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    if (textEditingController.text.endsWith('firebaseio.com')) {
                      Provider.of<Conditions>(context).setUrlKey(textEditingController.text);
                      Navigator.of(context).pushReplacementNamed('/home_page');
                    } else {
                      print("Testing");
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Inavlid Url!", 
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          backgroundColor: Colors.black54,
                        )
                      );
                    }
                  },
                );
  }
}