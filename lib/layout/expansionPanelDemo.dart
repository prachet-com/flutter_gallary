import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  static final routeName = "/expansion-panel-demo";

  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Expansion Panel Demo'),
        ),
        body: Center(
          child: Text('Show expansion panel demo here'),
      ),);
  }
}
