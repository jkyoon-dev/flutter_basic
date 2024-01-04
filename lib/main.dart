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
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,

        /// children 복수형으로 사용
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 80,
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 80,
            child: Text('Container 2'),
          ),
          Container(
            color: Colors.yellow,
            width: 100,
            height: 80,
            child: Text('Container 3'),
          ),
        ],
      ),
    );
  }
}
