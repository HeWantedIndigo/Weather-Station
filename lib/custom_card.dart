import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {

  final String body1;
  final String body2;
  final Icon icon;

  CustomCard(this.body1, this.body2, this.icon);

  @override
  _CustomCardState createState() => _CustomCardState();

}

class _CustomCardState extends State<CustomCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 3,
        )
      ),
      color: Colors.white54,
      elevation: 10,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            widget.icon,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  widget.body1,
                  style: Theme.of(context).textTheme.body1,
                ),
                Text(
                  widget.body2,
                  style: Theme.of(context).textTheme.body2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}