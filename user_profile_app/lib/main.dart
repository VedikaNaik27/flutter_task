import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Profile Image
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300",
              ),
            ),

            SizedBox(height: 20),

            // Name
            Text(
              "Vedika Naik",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // Bio
            Text(
              "Flutter Developer | Tech Enthusiast | Learner",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),

            // Details Section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Details",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 10),
                      Text("vedika@email.com"),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(width: 10),
                      Text("+91 9876543210"),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Follow Button
            ElevatedButton(
              onPressed: () {
                // No functionality required
              },
              child: Text("Follow"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: 40, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}