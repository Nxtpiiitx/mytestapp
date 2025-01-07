import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 255, 153, 0),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Answer3()),
            );
          },
          child: const Text('Go to Product Layout'),
        ),
      ),
    );
  }
}

class Answer3 extends StatelessWidget {
  const Answer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Layout'),
        backgroundColor: const Color.fromARGB(255, 255, 193, 48),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // กลับไปยังหน้าก่อนหน้า
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            color: const Color.fromARGB(255, 205, 205, 205),
            child: const Text(
              'Category: Electronics',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    productCard('Laptop', '999 THB',
                        'https://m.media-amazon.com/images/I/812U5LMzf5L.jpg'),
                    productCard('Hair Straightener', '699 THB',
                        'https://p16-va.lemon8cdn.com/tos-alisg-v-a3e477-sg/2b0dc3ec0bc4450b9170beea0ff2c50a~tplv-tej9nj120t-origin.webp'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    productCard('Vacuum Cleaner', '499 THB',
                        'https://f.btwcdn.com/store-47991/product/35b8ac36-3b99-2639-89f6-600fb450ed5b.jpg'),
                    productCard('Camera', '299 THB',
                        'https://www.cameraegg.org/wp-content/uploads/2013/09/Nikon-D800-with-AF-S-NIKKOR-24-70mm-f-2.8G-lens.jpg'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productCard(String name, String price, String imagePath) {
    return Column(
      children: [
        ClipRect(
          child: Image.network(
            imagePath,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 50, color: Colors.red);
            },
          ),
        ),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontSize: 16)),
        Text(price, style: const TextStyle(color: Colors.green)),
      ],
    );
  }
}
