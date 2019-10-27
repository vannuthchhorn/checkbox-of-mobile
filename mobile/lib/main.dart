import 'package:flutter/material.dart';
void main() => runApp(Demo());

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Map<String, bool> foods = {
    'khmer Food':false,
    'Thai Food':false,
    'Laos Food':false,
    'China Food':false,
    'Indian Food':false,
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mobile checkbox"),
          centerTitle: true,
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 30.0),
              child: Icon(Icons.send),
            ),
          ],
        ),
        body: ListView(
          children:foods.keys.map( (String key){
            return Card(
              child: CheckboxListTile(
                title: Text(key),
                value: foods[key],
                activeColor: Colors.pink,
                secondary: Icon(Icons.edit, color: Colors.green,),
                onChanged: (bool food){
                  setState(() {
                   foods[key]= food; 
                  });
                },
              ),
            );
          }).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}