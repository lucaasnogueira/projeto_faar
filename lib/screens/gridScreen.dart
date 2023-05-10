import 'package:flutter/material.dart';


class Grid extends StatefulWidget {
  @override
  GridState createState() => new GridState();
}
class GridState extends State<Grid> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Grid()
        ],
      ),
    );
  }
}
