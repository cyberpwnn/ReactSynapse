import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  MoreScreen({Key key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  bool isDark()
  {
    return false;
  }

  void setDark(bool dark)
  {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              CheckboxListTile(value: isDark(), onChanged: (b) => setDark(b), title: Text("Dark Theme"), subtitle: Text("Toggle dark theme."),)
              ,ListTile(
                title: Text("Forget Servers"),
                subtitle: Text("Forgets all saved servers on this app."),
                onTap: () {}
              )
            ]
          )
        )
      ],
    );
  }
}