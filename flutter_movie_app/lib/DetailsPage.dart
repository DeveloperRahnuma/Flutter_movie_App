import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
   DetailsPage({required this.movieName });
  final String movieName;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movieName),
      ),
    );
  }
}
