import 'package:grocery_scanner_app/data/model/grocery_model.dart';
import 'package:grocery_scanner_app/data/remote/grocery_remote.dart';
import 'package:grocery_scanner_app/domain/entities/grocery_entities.dart';
import 'package:grocery_scanner_app/domain/repository/grocery_repository.dart';

class GroceryRepositoryImpl extends GroceryRepository {
  GroceryRemote groceryRemote;

  GroceryRepositoryImpl(this.groceryRemote);

  @override
  Future<List<GroceryEntity>> getGrocery() async {
    final groceries = await groceryRemote.getGroceries();
    return groceries.map((grocery) => grocery.toDomain()).toList();
  }

  @override
  Future<GroceryEntity> addGrocery(GroceryEntity groceryEntity) async {
    final groceryData = Grocery.fromDomain(groceryEntity);
    final addedGrocery = await groceryRemote.addGrocery(groceryData);
    return addedGrocery.toDomain();
  }

  @override
  Future<GroceryEntity> updateGrocery(GroceryEntity groceryEntity) async {
    final groceryData = Grocery.fromDomain(groceryEntity);
    final updatedGrocery = await groceryRemote.updateGrocery(groceryData);
    return updatedGrocery.toDomain();
  }

  @override
  Stream<List<GroceryEntity>> watchGroceries() {
    return groceryRemote.watchGroceries().map(
        (groceries) => groceries.map((grocery) => grocery.toDomain()).toList());
  }
}
