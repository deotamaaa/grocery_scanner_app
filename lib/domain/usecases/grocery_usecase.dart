import 'package:grocery_scanner_app/domain/entities/grocery_entities.dart';
import 'package:grocery_scanner_app/domain/repository/grocery_repository.dart';

class GroceryUseCase {
  final GroceryRepository _groceryRepository;

  GroceryUseCase(this._groceryRepository);

  Future<List<GroceryEntity>> getGrocery() async {
    return await _groceryRepository.getGrocery();
  }

  Future<GroceryEntity> addGrocery(GroceryEntity grocery) async {
    return await _groceryRepository.addGrocery(grocery);
  }

  Future<GroceryEntity> updateGrocery(GroceryEntity grocery) async {
    return await _groceryRepository.updateGrocery(grocery);
  }

  Stream<List<GroceryEntity>> watchGroceries() {
    return _groceryRepository.watchGroceries();
  }
}
