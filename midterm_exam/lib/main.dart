import 'package:flutter/material.dart';

void main() {
  runApp(ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ExamScreen());
  }
}

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  List<String> vowelList = [];
  List<String> consonantList = [];
  TextEditingController itemCtrl = TextEditingController();

  void addItem() {
    var item = itemCtrl.text.toLowerCase();
    if (item.startsWith('a') ||
        item.startsWith('e') ||
        item.startsWith('i') ||
        item.startsWith('o') ||
        item.startsWith('u')) {
      vowelList.add(itemCtrl.text);
    } else
      consonantList.add(itemCtrl.text);

    var first = itemCtrl.text[0];
    switch (first) {
      case "a":
      case "e":
      case "i":
      case "o":
      case "u":
        vowelList.add(itemCtrl.text);
        break;
      default:
        consonantList.add(itemCtrl.text);
    }
    print(itemCtrl.text.split(""));
    print(itemCtrl.text.characters.first);
    var vowels = ["a", "e", "i", "o", "u"];
    if (vowels.contains(itemCtrl.text.split('').first))
      vowelList.add(itemCtrl.text);
    else
      consonantList.add(itemCtrl.text);
    print(vowelList);
    print(consonantList);
    setState(() {});
  }

  void passItems(bool isVowel) {
    var list = isVowel ? vowelList : consonantList;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => ListScreen(items: list)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(controller: itemCtrl),
            ElevatedButton(onPressed: addItem, child: Text('ADD')),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: vowelList.length,
                      itemBuilder: (_, index) =>
                          ListTile(title: Text(vowelList[index])),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: consonantList.length,
                      itemBuilder: (_, index) =>
                          ListTile(title: Text(consonantList[index])),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => passItems(true),
                  child: Text('View'),
                ),
                ElevatedButton(
                  onPressed: () => passItems(false),
                  child: Text('View'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  ListScreen({super.key, required this.items});

  List<String> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, index) => ListTile(title: Text(items[index])),
        ),
      ),
    );
  }
}
