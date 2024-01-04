import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 겹겹히 쌓아 올리기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //   top: 430,
        //   left: 30,
        //   child: Container(width: 500, height: 500, color: Colors.red),
        // ),
        Align(
          alignment: Alignment(0.5, -0.5),
          child: Container(width: 400, height: 400, color: Colors.orange),
        ),
        Container(width: 300, height: 300, color: Colors.green),
        Container(width: 200, height: 200, color: Colors.blue),
      ],
    );
  }
}
