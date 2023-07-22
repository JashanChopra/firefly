import 'package:flutter/material.dart';
import 'collections.dart';
import 'camera_page.dart';

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
        primaryColor: const Color.fromARGB(255, 20, 25, 43),
        scaffoldBackgroundColor: const Color.fromARGB(255, 20, 25, 43),
        fontFamily: 'Roboto',
      ),
      home: const Home(title: 'FlashFinder Home Page'),
    );
  }
}

// TODO: create nested navigation flow so that top and bottom app bars remain static.
class Home extends StatelessWidget {
  const Home({super.key, required this.title});
  final String title;
  // This is the home page.

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
  // This is the title bar.
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottomOpacity: 0,
      elevation: 0,
      title: const Text('FlashFinder', style: TextStyle(fontSize: 28)),
    );
  }
}

class RecordVideoButton extends StatelessWidget {
  const RecordVideoButton({super.key});
  // This is the button to that takes you to the page to record video.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CameraPage()));
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 56, 92, 15),
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
  // This is the button that takes you to the page to upload video.
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
          color: const Color.fromARGB(255, 56, 92, 15),
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
  // This is the button that takes you to the how it works page.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HowItWorksPage()));
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 56, 92, 15),
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
  // This is the bottom row of icons.
  //Theme.of(context).primaryColor
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              tooltip: 'Saved videos',
              icon: const Icon(Icons.folder),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Fireflies',
              icon: const Icon(Icons.emoji_nature),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'User info',
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CollectionPage()),
                  );
                },
                child: const Text('Go to New Page')),
          ],
        ),
      ),
    );
  }
}

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({super.key});
  // This is the How It Works page.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          TitleBar(),
          HowItWorksContent(),
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

class HowItWorksContent extends StatelessWidget {
  const HowItWorksContent({super.key});
  // This is the text on the How It Works page.

  @override
  Widget build(BuildContext context) {
    return const Text('lorem ipsum');
  }
}

class RecordVideoPage extends StatelessWidget {
  const RecordVideoPage({super.key});
  // This is the Record Video page.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          TitleBar(),
          RecordVideoContent(),
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

class RecordVideoContent extends StatelessWidget {
  const RecordVideoContent({super.key});
  // This is the content on the Record Video page.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SubmitVideoPage()));
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 56, 92, 15),
        ),
        child: const Center(
          child: Text('Click here to record video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class SubmitVideoPage extends StatelessWidget {
  const SubmitVideoPage({super.key});
  // This is the page that lets the user submit the video to be classified.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          TitleBar(),
          SubmitVideoContent(),
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

class SubmitVideoContent extends StatelessWidget {
  const SubmitVideoContent({super.key});
  // This is the content on the Submit Video page

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ClassifyVideoPage()));
      },
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 56, 92, 15),
        ),
        child: const Center(
          child: Text('Click here to classify video',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}

class ClassifyVideoPage extends StatelessWidget {
  const ClassifyVideoPage({super.key});
  // This is the page that lets the user submit the video to be classified.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          TitleBar(),
          Text('Classifying video...'),
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
