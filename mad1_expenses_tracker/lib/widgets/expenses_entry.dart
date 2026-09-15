import 'package:flutter/material.dart';

class ExpensesEntryWidget extends StatelessWidget {
  ExpensesEntryWidget({super.key});

  final descriptionCtrl = TextEditingController();
  final amountCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('Description', style: TextStyle(fontSize: 12)),
            TextField(controller: descriptionCtrl),
            SizedBox(height: 12),
            Text('Amount', style: TextStyle(fontSize: 12)),
            TextField(controller: amountCtrl, keyboardType: .number),
            Row(
              mainAxisAlignment: .end,
              children: [
                ElevatedButton(onPressed: addItem, child: Text('ADD ITEM')),
                TextButton(onPressed: null, child: Text('Cancel')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void addItem() {
    print(descriptionCtrl.text);
  }
}
