import 'package:flutter/material.dart';

class Datapassing extends StatefulWidget {
  Datapassing({super.key, required this.data3, required this.data4});

  String data3;
  String data4;

  @override
  State<Datapassing> createState() => _DatapassingState();
}

class _DatapassingState extends State<Datapassing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(widget.data3), Text(widget.data4)],
      ),
    );
  }
}
