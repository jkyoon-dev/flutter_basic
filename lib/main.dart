import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('tab');
              },
            ),
            Icon(Icons.play_arrow),
          ],
          centerTitle: true,
          title: Text('this is AppBar'),
        ),
        body: TestWidget(),
      ),
    ),
  );
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hello Flutter');
  }
}
