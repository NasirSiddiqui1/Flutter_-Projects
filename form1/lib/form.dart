import 'package:flutter/material.dart';

class DeliveryAgentForm extends StatefulWidget {
  @override
  _DeliveryAgentFormState createState() => _DeliveryAgentFormState();
}

class _DeliveryAgentFormState extends State<DeliveryAgentForm> {
  final _formKey = GlobalKey<FormState>();
  String firstName = '';
  String lastName = '';
  String contactNumber = '';
  String aadharNumber = '';
  String houseNumber = '';
  String localityName = '';
  String cityName = '';
  String stateName = '';

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
        title: Text('Add Delivery Agent'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter basic details:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              icon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter first name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                firstName = value;
                              });
                            },
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              icon: Icon(Icons.person),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter last name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                lastName = value;
                              });
                            },
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Contact Number',
                              icon: Icon(Icons.phone),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter contact number';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                contactNumber = value;
                              });
                            },
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Aadhar Number',
                              icon: Icon(Icons.credit_card),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter aadhar number';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                aadharNumber = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter personal details:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'House Number/Flat No',
                              icon: Icon(Icons.home),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter house number/flat No';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                houseNumber = value;
                              });
                            },
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Locality Name',
                              icon: Icon(Icons.location_city),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter locality name';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                localityName = value;
                              });
                            },
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'City Name',
                              icon: Icon(Icons.location_city),
                            ),
                            onChanged: (value) {
                              setState(() {
                                cityName = value;
                              });
                            },
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'State Name',
                              icon: Icon(Icons.location_city),
                            ),
                            onChanged: (value) {
                              setState(() {
                                stateName = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Reset button logic here
                          setState(() {
                            _formKey.currentState!.reset();
                          });
                        },
                        child: Text('Reset'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Submit button logic here
                            // You can use the captured values for further processing.
                            print('First Name: $firstName');
                            print('Last Name: $lastName');
                            print('Contact Number: $contactNumber');
                            print('Aadhar Number: $aadharNumber');
                            print('House Number/Flat No: $houseNumber');
                            print('Locality Name: $localityName');
                            print('City Name: $cityName');
                            print('State Name: $stateName');
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DeliveryAgentForm(),
  ));
}
