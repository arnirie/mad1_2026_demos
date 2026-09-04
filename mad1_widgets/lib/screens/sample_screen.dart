import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  var boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    print('build executed');

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              //reexecutes the build method
              boxColor = Colors.yellow;
            });
            print('tapped the box');
          },
          child: Container(color: boxColor, height: 200, width: 200),
        ),
      ),
    );
  }
}
