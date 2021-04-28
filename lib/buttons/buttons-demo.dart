import 'package:flutter/material.dart';

class ButtonsDemoScreen extends StatelessWidget {
  static final routeName = "/buttons-demo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Prachet Buttons'),
        ),
        body: Column(
          children: [
            Divider(),
            Container(
              // fixed width can be set like this too
              // width: 200,
              child: ElevatedButton(
                key: GlobalKey(),
                onPressed: () {},
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                    //how to override colors
                    // primary: Colors.teal,
                    ),
              ),
            ),
            Divider(),
            ElevatedButton.icon(
              key: GlobalKey(),
              onPressed: () {},
              label: Text("Elevated Button with icon"),
              icon: Icon(Icons.web),
            ),
            Divider(),
            TextButton(
              key: GlobalKey(),
              onPressed: () {},
              child: Text('Text Button Style 1'),
              style: TextButton.styleFrom(),
            ),
            Divider(),
            TextButton.icon(
              key: GlobalKey(),
              onPressed: () {},
              label: Text('Text Button with Icon'),
              icon: Icon(Icons.keyboard),
              style: TextButton.styleFrom(),
            ),
            Divider(),
            TextButton(
              key: GlobalKey(),
              onPressed: () {},
              child: Text('Text Button Style 3'),
              style: TextButton.styleFrom(backgroundColor: Colors.transparent),
            ),
            Divider(),
            OutlinedButton(
              key: GlobalKey(),
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            Divider(),
            OutlinedButton.icon(
              key: GlobalKey(),
              onPressed: () {},
              label: Text('Outlined Button with Icon'),
              icon: Icon(Icons.label),
            ),
            Divider(),
            Text(
              'Note: At this point, only icons provided by flutter can be added',
              style: TextStyle(
                color: Colors.red
              ),
            ),
          ],
        ));
  }
}
