import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(home: demo()));
//   // runApp(MaterialApp(
//   //   home: flash()
// }

// ignore: camel_case_types
class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Name",
              style: TextStyle(color: Colors.white30, letterSpacing: 2.0),
            ),
            Text(
              "Nasir Sheikh",
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
