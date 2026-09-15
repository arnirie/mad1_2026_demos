class ExpensesItem {
  //properties
  final String id = DateTime.now.toString();
  late String description;
  late double price;
  late DateTime? date;

  //methods/constructor
  ExpensesItem({required this.description, required this.price, this.date});
}
