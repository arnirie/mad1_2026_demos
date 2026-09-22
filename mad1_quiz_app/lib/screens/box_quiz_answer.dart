import 'package:flutter/material.dart';

class BoxQuiz extends StatefulWidget {
  const BoxQuiz({super.key});

  @override
  State<BoxQuiz> createState() => _BoxQuizState();
}

class _BoxQuizState extends State<BoxQuiz> {
  final colors = [Colors.red, Colors.blue, Colors.yellow];
  final List<double> sizes = [300, 200, 100];
  var currentColor = 0;
  var currentSize = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: sizes[currentSize],
            height: sizes[currentSize],
            color: colors[currentColor],
          ),
          ElevatedButton(
            onPressed: () => setState(() => currentColor = ++currentColor % 3),
            child: Text('Color'),
          ),
          ElevatedButton(
            onPressed: () => setState(() => currentSize = ++currentSize % 3),
            child: Text('Size'),
          ),
        ],
      ),
    );
  }
}
