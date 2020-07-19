import 'package:flutter/material.dart';

class React extends StatefulWidget {
  React({Key key}) : super(key: key);

  @override
  _ReactState createState() => _ReactState();
}

class _ReactState extends State<React> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("React Synapse"),
      ),
    );
  }
}