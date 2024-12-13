import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter Demo',
              style: TextStyle(color: Colors.white),
            ),
            leading: const Icon(Icons.add),
            backgroundColor: Colors.purple,
          ),
          body: Container(
              height: 100,
              width: 100,
              color: Colors.orange,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              child: const Text('Hello')),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Hello");
            },
            child: const Icon(Icons.phone),
          ),
        ));
  }
}

/*class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("CPSU Project",
                style: TextStyle(
                    color: Colors.white, fontSize: 28, letterSpacing: 2)),
            backgroundColor: Colors.redAccent,
            centerTitle: true),
        backgroundColor: Colors.pink,
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
              padding: const EdgeInsets.all(15),
              color: Colors.blueAccent,
              child: const Text("Hello World1")),
          Container(
              padding: const EdgeInsets.all(15),
              color: Colors.blueAccent,
              child: const Text("Hello World2")),
          Container(
              padding: const EdgeInsets.all(15),
              color: Colors.blueAccent,
              child: const Text("Hello World3")),
        ]));
  }
}*/
