import 'package:grocery_scanner_app/domain/entities/grocery_entities.dart';
import 'package:isar/isar.dart';

part 'grocery_model.g.dart';

@Collection()
class Grocery {
  Id id = Isar.autoIncrement;

  String? groceryName;
  String? groceryDescription;
  double? groceryPrice;
  int? groceryQuantity;
  double? totalPrice;

  Grocery({
    this.groceryName,
    this.groceryDescription,
    this.groceryPrice,
    this.groceryQuantity,
    this.totalPrice,
  });

  // Use factory constructor for fromJson
  factory Grocery.fromJson(Map<String, dynamic> json) {
    return Grocery(
      groceryName: json['groceryName'],
      groceryDescription: json['groceryDescription'],
      groceryPrice: json['groceryPrice'],
      groceryQuantity: json['groceryQuantity'],
      totalPrice: json['totalPrice'],
    );
  }

  // Define toJson method
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['groceryName'] = groceryName;
    data['groceryDescription'] = groceryDescription;
    data['groceryPrice'] = groceryPrice;
    data['groceryQuantity'] = groceryQuantity;
    data['totalPrice'] = totalPrice;
    return data;
  }

  // Convert Isar model to domain entity
  GroceryEntity toDomain() {
    return GroceryEntity(
      groceryName: groceryName!,
      groceryDescription: groceryDescription!,
      groceryPrice: groceryPrice!,
      groceryQuantity: groceryQuantity!,
      totalPrice: totalPrice!,
    );
  }

  // Create Isar model from domain entity
  factory Grocery.fromDomain(GroceryEntity entity) {
    return Grocery(
      groceryName: entity.groceryName,
      groceryDescription: entity.groceryDescription,
      groceryPrice: entity.groceryPrice,
      groceryQuantity: entity.groceryQuantity,
      totalPrice: entity.totalPrice,
    );
  }
}
