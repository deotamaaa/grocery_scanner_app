import 'package:grocery_scanner_app/data/model/grocery_model.dart';

abstract class GroceryRemote {
  Future<List<Grocery>> getGroceries();
  Future<Grocery> addGrocery(Grocery grocery);
  Future<Grocery> updateGrocery(Grocery grocery);
  Stream<List<Grocery>> watchGroceries();
}
