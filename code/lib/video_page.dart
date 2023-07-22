import 'dart:io';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:FlashFinder/inference_page.dart';

class VideoPage extends StatefulWidget {
  final String filePath;

  const VideoPage({Key? key, required this.filePath}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _videoPlayerController;

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future _initVideoPlayer() async {
    _videoPlayerController = VideoPlayerController.file(File(widget.filePath));
    await _videoPlayerController.initialize();
    await _videoPlayerController.setLooping(true);
    await _videoPlayerController.play();
  }

  _saveVideoToGallery({required String videoPath}) async {
    // var result =
    var result =
        await ImageGallerySaver.saveFile(videoPath, isReturnPathOfIOS: true);
    // String iOSPath = result['filePath'];
    final route = MaterialPageRoute(
      fullscreenDialog: true,
      builder: (_) =>
          InferencePage(videoFile: videoPath), // or do we pass the file itself?
    );
    Navigator.push(context, route);

    // String outputPath = result['filePath'];
    // return outputPath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview'),
        elevation: 0,
        backgroundColor: Colors.black26,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () => _saveVideoToGallery(videoPath: widget.filePath),

            // move to a new page where classification happens
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: FutureBuilder(
        future: _initVideoPlayer(),
        builder: (context, state) {
          if (state.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return VideoPlayer(_videoPlayerController);
          }
        },
      ),
    );
  }
}
