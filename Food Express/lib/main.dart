import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: screen()));
  // runApp(MaterialApp(
  //   home: flash()
}

class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Scaffold(
          body: Center(
        child: Column(
          children: [
            const Text(
              "Food Express",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Manage your business smartly",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  // fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 70),
            const Icon(
              Icons.people,
              size: 120,
              color: Color.fromARGB(255, 1, 87, 157),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(280, 80),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {},
                child: const Text("Admin Login")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(280, 80),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {},
                child: const Text("Agent Login"))
          ],
        ),
      )),
    );
  }
}
