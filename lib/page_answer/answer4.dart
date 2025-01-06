import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Answer4(),
    );
  }
}

class Answer4 extends StatelessWidget {
  const Answer4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Profile Info
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('user@example.com'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.phone, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('123-456-7890'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.blue),
                  SizedBox(width: 10),
                  Text('123 Main Street'),
                ],
              ),
            ],
          ),
          Spacer(),
          // Menu Buttons in Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Edit Profile'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
