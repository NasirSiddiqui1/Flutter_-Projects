import 'package:flutter/material.dart';
import 'package:form1/main.dart';

void main() {
  runApp(const MyApp());
}
SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter Basic Details",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: TextFormField(
                  controller: firstname,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: "First Name",
                    label: Text("Enter First Name"),
                  ),
                ),
              ),
            ),