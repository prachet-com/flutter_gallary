import 'package:flutter/material.dart';

class ScrollbarDemo extends StatefulWidget {
  static final routeName = "/scrollbar-demo";

  @override
  _ScrollbarDemoState createState() => _ScrollbarDemoState();
}

class _ScrollbarDemoState extends State<ScrollbarDemo> {
  final counting = [];

  @override
  void initState() {
    for(int i = 0; i < 200; i++) {
      counting.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Scrollbar Demo'),
        ),
        body: Scrollbar(
          thickness: 10,
          isAlwaysShown: true, //show even if there is no active scrolling,
          // make false to remove it.
          radius: Radius.circular(10),
          child: ListView.builder(
            itemCount: counting.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text(counting[index].toString()),
              );
            },
          ),
        ));
  }
}
