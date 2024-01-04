import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // 스크롤
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Container(
            color: Colors.grey,
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
        ],
      ),
    );
  }
}
