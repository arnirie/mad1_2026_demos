import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GridScreen());
  }
}

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  var gridCount = 2;
  var boxCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                boxCount++;
                setState(() {});
              },
              child: Text('ADD'),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    gridCount = 2;
                    setState(() {});
                  },
                  child: Text('2-Grid'),
                ),
                ElevatedButton(
                  onPressed: () {
                    gridCount = 3;
                    setState(() {});
                  },
                  child: Text('3-Grid'),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: gridCount,
                ),
                itemCount: boxCount,
                itemBuilder: (_, index) =>
                    Container(color: index % 2 == 0 ? Colors.blue : Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
