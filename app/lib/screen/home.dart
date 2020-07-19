import 'package:flutter/material.dart';

class ReactHome extends StatefulWidget {
  ReactHome({Key key}) : super(key: key);

  @override
  _ReactHomeState createState() => _ReactHomeState();
}

class _ReactHomeState extends State<ReactHome> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, pos) {
        return ListTile(
          title: Text("Example Server $pos"),
          subtitle: Text("someserver$pos.com" + (pos > 100 ? " (Yes, this goes on forever)" : "")),
          onTap: () {},
        );
      },
    );
  }
}