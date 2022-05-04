import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  void saveForm () {
    print('Save form is called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport Expenses Tracker'),
        actions: [
          IconButton(onPressed: saveForm, icon: Icon(Icons.save))
        ],
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            decoration: InputDecoration(
              label: Text('Mode of Transport'),
            ),
            items: [
              DropdownMenuItem(child: Text('Bus'), value: 'bus'),
              DropdownMenuItem(child: Text('Grab'), value: 'grab'),
              DropdownMenuItem(child: Text('MRT'), value: 'mrt'),
              DropdownMenuItem(child: Text('Taxi'), value: 'taxi'),
            ],
            onChanged: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(label: Text('Cost')),
            onSaved: (value) {},
          ),
          TextFormField(
            decoration: InputDecoration(label: Text('Purpose')),
            onSaved: (value) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('No Date Chosen'),
              TextButton(
                  child: Text('Choose Date', style: TextStyle(fontWeight:
                  FontWeight.bold)),
                  onPressed: () {} )
            ],
          ),
        ],
      ),
    );
  }
}
