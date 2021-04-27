import 'package:flutter/material.dart';
import 'package:flutter_gallary/layout/scrollbarDemo.dart';

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
          // buildTile("Something else"),
        ],
      ),
    );
  }
}
