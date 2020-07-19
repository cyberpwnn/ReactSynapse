import 'package:app/screen/home.dart';
import 'package:app/screen/more.dart';
import 'package:flutter/material.dart';

class React extends StatefulWidget {
  React({Key key}) : super(key: key);

  @override
  _ReactState createState() => _ReactState();
}

class _ReactState extends State<React> {
  ScreenType currentScreen = ScreenType.HOME;

  Widget buildScreen(BuildContext context)
  {
    switch(currentScreen)
    {
      case ScreenType.HOME:
        return ReactHome();
      case ScreenType.MORE:
        return MoreScreen();
    }

    return Text("INVALID SCREEN!");
  }
 
  void setScreen(ScreenType type)
  {
    setState(() {
    this.currentScreen = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          Center(
        child: Padding(padding: EdgeInsets.only(bottom: 47), child: buildScreen(context)),
      ),
     Align(
       alignment: Alignment.bottomCenter,
       child: Container(
        child: Material(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
          FlatButton(onPressed: () => setScreen(ScreenType.HOME), child: Column(
            children: [
              Icon(Icons.home),
              Text("Home")
            ]
          )),
          FlatButton(onPressed: () => setScreen(ScreenType.MORE), child: Column(
            children: [
              Icon(Icons.more_horiz),
              Text("More")
            ]
          )),
        ],)
            ],
          )
,elevation: 4,
        ),
        height: 47,
      ),
     )
        ],
      )),
      
    );
  }
}

enum ScreenType{
  HOME,
  MORE
}