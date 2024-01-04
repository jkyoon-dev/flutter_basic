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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,

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
          Container(
            color: Colors.green,
            width: 300,
            height: 120,
            child: Text('Container 4'),
          ),
        ],
      ),
    );
  }
}
