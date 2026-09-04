import 'package:flutter/material.dart';
import 'screens/sample_screen.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SampleScreen());
  }
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('MAD'), backgroundColor: Colors.amber),
//         body: Container(
//           color: Colors.cyan,
//           child: Column(
//             crossAxisAlignment: .start,
//             mainAxisAlignment: .end,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(width: 100, height: 100, color: Colors.red),
//               Container(height: 100, color: Colors.blue),
//               Container(width: 100, height: 100, color: Colors.yellow),
//             ],
//           ),
//         ),
//         // body: Container(
//         //   color: Colors.blue,
//         //   padding: .all(20),
//         //   margin: .all(20),
//         //   child: Text('hello'),
//         // ),
//         // body: Padding(
//         //   padding: .all(20),
//         //   child: Container(color: Colors.blue),
//         // ),
//         // body: SafeArea(child: Text('Hello to all')),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Column(
//           //mainaxis - vertical
//           //cross axis - horizontal
//           crossAxisAlignment: .start,
//           children: [
//             Row(
//               children: [
//                 Container(height: 200, width: 200, color: Colors.blue),
//                 Container(height: 200, width: 200, color: Colors.red),
//               ],
//             ),
//             Container(height: 200, width: 200, color: Colors.orange),
//           ],
//         ),
//       ),
//     ),
//   );
// }
