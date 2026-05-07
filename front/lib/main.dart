import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tasks"),
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Vedika Naik",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Vedika Naik"),
              subtitle: Text("Student"),
            ),
          ),
          SizedBox(height: 20),
          Image.network(
            "https://www.rogerebert.com/features/its-not-your-fault-on-hanging-out-and-healing-in-good-will-hunting",
          ),
        ],
      ),
    );
  }
}
