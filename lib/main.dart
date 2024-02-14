import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/menu.png',
            height: 40,
            width: 40,
          ),
        ),
        title: const Text(
          'E-Book',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 160, 160, 160),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BookTitle(),
              const BookDescription(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Button action goes here
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/next.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    const Text(
                      'Next...',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookTitle extends StatelessWidget {
  const BookTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(16.0),
      child: const Text(
        'HARRY POTTER AND THE PHILOSOPHER\'S STONE',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class BookDescription extends StatelessWidget {
  const BookDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BookParagraph(
          text:
              'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling...',
        ),
        BookParagraph(
          text:
              'The book was first published in the United Kingdom on 26 June 1997 by Bloomsbury...',
        ),
        BookParagraph(
          text:
              'Most reviews were very favourable, commenting on Rowling\'s imagination...',
        ),
      ],
    );
  }
}

class BookParagraph extends StatelessWidget {
  final String text;

  const BookParagraph({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}