import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  static final routeName = "/expansion-panel-demo";

  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {

  List<Item> _data = generateItems(10);

  Widget _buildPanelDemo(){
    return ExpansionPanel(
      expansionCallback: (int index, bool isExpanded){
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item){
        return ExpansionPanel{
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
               title: Text(item.expandedValue),
               subtitle: Text('To delete this panel, tap the trash icon'),
               trailing: Icon(Icon.delete),
               ontap: () {
                 setState(() {
                   _data.removeWhere((currentItem) => item == currentItem);
        });
               },
        ),
        isExpanded: item,isExpanded
        };
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Expansion Panel Demo'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: _builderPanelDemo(),
          ),
        ),
    );
  }
}

class Item{
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({this.expandedValue, this.headerValue, this.isExpanded = false});
}

List<Item> generateItems(int numberOfItems){
  return List.generate(numberOfItems, (index) {
    return Item(
     headerValue: 'Panel $index',
     expandedValue: 'This is item number $index',
    );
  });
}