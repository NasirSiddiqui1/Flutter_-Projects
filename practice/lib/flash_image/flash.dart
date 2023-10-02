import 'dart:async';
// import 'dart:js';

import 'package:flutter/material.dart';

// void main{
//       runApp(MaterialApp(home: flash()));
// }

class flash extends StatefulWidget {
  const flash({super.key});

  @override
  State<flash> createState() => _flashState();
}

class _flashState extends State<flash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => demo(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [Image.asset("assests/images/images.png")],
          ),
        ),
      ),
    );
  }
}
