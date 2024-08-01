import 'package:grocery_scanner_app/domain/entities/grocery_entities.dart';

abstract class GroceryRepository {
  Future<List<GroceryEntity>> getGrocery();
  Future<GroceryEntity> addGrocery(GroceryEntity groceryEntity);
  Future<GroceryEntity> updateGrocery(GroceryEntity groceryEntity);
  Stream<List<GroceryEntity>> watchGroceries();
}
