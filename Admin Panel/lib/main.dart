import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Admin_panel()));
}

class Admin_panel extends StatelessWidget {
  const Admin_panel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADMIN PANEL"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("30",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                "Toadys Deliveries",
                style: TextStyle(
                    // letterSpacing: 2.0,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                // margin: EdgeInsets.fromLTRB(100, 100, 100, 100),
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Delivery Agents",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Our Customers",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
