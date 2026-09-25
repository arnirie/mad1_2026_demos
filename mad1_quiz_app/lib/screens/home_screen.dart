import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void openQuiz(BuildContext ctx) {
    //open screen
    // Navigator.push(
    //   ctx,
    //   CupertinoPageRoute(
    //     builder: (_) => SecondScreen(),
    //     // builder: (_) {
    //     //   return QuizScreen();
    //     // },
    //   ),
    // );
    Navigator.of(
      ctx,
    ).pushReplacement(MaterialPageRoute(builder: (_) => SecondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Image.asset('assets/images/banner.jpg'),
            Text(
              'Test your trivia skills. \n Play now!',
              style: TextStyle(fontSize: 36, fontWeight: .w300),
              textAlign: .center,
            ),
            SizedBox(height: 22),
            ElevatedButton.icon(
              onPressed: () => openQuiz(context),
              label: Text('PLAY'),
              icon: Icon(Icons.playlist_add_check_circle),
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Row(
            //     mainAxisSize: .min,
            //     children: [
            //       Icon(Icons.play_arrow),
            //       SizedBox(width: 8),
            //       Text('PLAY'),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
