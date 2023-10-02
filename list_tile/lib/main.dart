import 'package:flutter/material.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DeliveryScreen(),
    );
  }
}

class DeliveryScreen extends StatelessWidget {
  final List<String> persons = [
    'Nasir',
    'Ayush',
    'Person',
    'Devendra',
    'Banty',
    'Abhishek',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Delivery App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Handle trailing icon tap here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (
          context,
          index,
        ) {
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text(persons[index]),
            subtitle: Text('Delivery address here'),
            trailing: Icon(Icons.add),
            onTap: () {
              // Handle person item tap here
            },
          );
        },
      ),
    );
  }
}
