import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Media Post"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.blue, shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nutpita Niyomyart",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "5 minutes ago",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blueGrey,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Like")),
                const SizedBox(width: 61),
                ElevatedButton(onPressed: () {}, child: const Text("Comment")),
                const SizedBox(width: 61),
                ElevatedButton(onPressed: () {}, child: const Text("Share")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
