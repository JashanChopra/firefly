import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  final String speciesName;
  final String speciesLocation;

  const ExpandableCard(
      {required this.speciesName, required this.speciesLocation});

  @override
  State<ExpandableCard> createState() => _ExpandableCard();
}

class _ExpandableCard extends State<ExpandableCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ExpansionTile(
            onExpansionChanged: (expanded) {
              setState(() {
                _isExpanded = expanded;
              });
            },
            title: Text(widget.speciesName),
            leading: Icon(Icons.album),
            subtitle: Text(widget.speciesLocation),
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Something will go here"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
