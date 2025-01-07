import 'package:flutter/material.dart';
import 'package:mytestapp/page_answer/answer1.dart';
import 'package:mytestapp/page_answer/answer2.dart';
import 'package:mytestapp/page_answer/answer3.dart';
import 'package:mytestapp/page_answer/answer4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnswerPortal(),
    );
  }
}

class AnswerPortal extends StatelessWidget {
  const AnswerPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Answer'),
        backgroundColor: const Color.fromARGB(255, 255, 153, 0),
      ),
      body: Container(
        color: Colors.lightBlue[50], // สีพื้นหลังอ่อน
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ปุ่ม Answer1 - Answer4
              buildAnswerButton(context, 'Answer1', Answer1()),
              SizedBox(height: 10),
              buildAnswerButton(context, 'Answer2', Answer2()),
              SizedBox(height: 10),
              buildAnswerButton(context, 'Answer3', Answer3()),
              SizedBox(height: 10),
              buildAnswerButton(context, 'Answer4', Answer4()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAnswerButton(BuildContext context, String label, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // ปุ่มโค้งมน
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 2,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      ),
      child: Text(label),
    );
  }
}

// หน้าจอ Answer1
class Answer1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer1'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'This is Answer1 Page',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}

// หน้าจอ Answer2
class Answer2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer2'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'This is Answer2 Page',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}

// หน้าจอ Answer3
class Answer3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer3'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'This is Answer3 Page',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}

// หน้าจอ Answer4
class Answer4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer4'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'This is Answer4 Page',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
