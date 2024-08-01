class GroceryEntity {
  GroceryEntity({
    required this.groceryName,
    required this.groceryDescription,
    required this.groceryPrice,
    required this.groceryQuantity,
    required this.totalPrice,
  });
  final String groceryName;
  final String groceryDescription;
  final double groceryPrice;
  final int groceryQuantity;
  final double totalPrice;

  Map<String, dynamic> toJson() {
    return {
      'groceryName': groceryName,
      'groceryDescription': groceryDescription,
      'groceryPrice': groceryPrice,
      'groceryQuantity': groceryQuantity,
      'totalPrice': totalPrice,
    };
  }
}
