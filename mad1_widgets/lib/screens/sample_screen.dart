import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  var boxColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    print('build executed');

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              // if (boxColor == Colors.red)
              //   boxColor = Colors.yellow;
              // else
              //   boxColor = Colors.red;
              boxColor = boxColor == Colors.red ? Colors.yellow : Colors.red;
            });
            print('tapped the box');
          },
          child: Container(color: boxColor, height: 200, width: 200),
        ),
      ),
    );
  }
}
