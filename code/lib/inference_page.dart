import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pytorch_mobile/pytorch_mobile.dart';
import 'package:FlashFinder/main.dart';

class InferencePage extends StatefulWidget {
  final String videoFile;

  const InferencePage({Key? key, required this.videoFile}) : super(key: key);

  @override
  _InferencePageState createState() => _InferencePageState();
}

class _InferencePageState extends State<InferencePage> {
// Model customModel = await PyTorchMobile
// .loadModel('assets/models/custom_model.pt');

// List prediction = await customModel
// .getPrediction(file, DType.float32);

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
