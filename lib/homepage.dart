import 'package:flutter/material.dart';
import 'package:flutter_gallary/buttons/buttons-demo.dart';
import 'package:flutter_gallary/layout/expansionPanelDemo.dart';
import 'package:flutter_gallary/layout/scrollbarDemo.dart';
import 'package:flutter_gallary/layout/youtube_layout.dart';

class HomepageScreen extends StatelessWidget {
  buildTile(BuildContext context, String componentName, String route) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(route);
        },
        child: ListTile(
            title: Text(componentName)
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Gallery"),
      ),
      body: ListView(
        children: [
          buildTile(context, "Scrollbar", ScrollbarDemo.routeName),
          // buildTile(context, "Expansion Panel", ExpansionPanelDemo.routeName),
          buildTile(context, "Prachet Buttons", ButtonsDemoScreen.routeName),
          buildTile(context, "Youtube", YoutubeAppDemo.routeName),
          // buildTile("Something else"),
        ],
      ),
    );
  }
}
