import 'package:flutter/material.dart';

void main() {
  runApp(const FlashFinderApp());
}

class FlashFinderApp extends StatelessWidget {
  const FlashFinderApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlashFinder',
      theme: ThemeData(
        // This is the theme of your application.
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 20, 25, 43),
        fontFamily: 'Roboto',
      ),
      home: const Home(title: 'FlashFinder Home Page'),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          TitleBar(),
          Padding(padding: EdgeInsets.all(32)),
          Padding(padding: EdgeInsets.all(32), child: RecordVideoButton()),
          Padding(padding: EdgeInsets.all(32), child: UploadVideoButton()),
          Padding(padding: EdgeInsets.all(32), child: HowItWorksButton()),
          Padding(padding: EdgeInsets.all(32)),
          Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: BottomButtonRow()))),
        ],
      ),
    );
  }
}

class TitleBar extends StatelessWidget {
  const TitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: const Text('FlashFinder', style: TextStyle(fontSize: 32)),
    );
  }
}

class RecordVideoButton extends StatelessWidget {
  const RecordVideoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('RecordVideoButton was tapped!');
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Record Video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class UploadVideoButton extends StatelessWidget {
  const UploadVideoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('UploadVideoButton was tapped!');
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Upload Video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class HowItWorksButton extends StatelessWidget {
  const HowItWorksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('HowItWorksButton was tapped!');
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('How It Works',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class BottomButtonRow extends StatelessWidget {
  const BottomButtonRow({super.key});

//Theme.of(context).primaryColor
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.folder, color: Color.fromARGB(255, 219, 163, 163)),
          Icon(Icons.emoji_nature, color: Color.fromARGB(255, 219, 163, 163)),
          Icon(Icons.account_circle, color: Color.fromARGB(255, 219, 163, 163)),
        ],
      ),
    );
  }
}
