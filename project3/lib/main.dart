import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Showcase'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              color: Colors.red,
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(height: 20),
            PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'item1',
                    child: Text('Item 1'),
                  ),
                  PopupMenuItem<String>(
                    value: 'item2',
                    child: Text('Item 2'),
                  ),
                  PopupMenuItem<String>(
                    value: 'item3',
                    child: Text('Item 3'),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }
}
