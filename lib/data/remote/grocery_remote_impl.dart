import 'package:grocery_scanner_app/data/model/grocery_model.dart';
import 'package:grocery_scanner_app/data/remote/grocery_remote.dart';
import 'package:grocery_scanner_app/features/Login/service/isar.dart';
import 'package:isar/isar.dart';
import 'package:logger/web.dart';

class GroceryRemoteImpl implements GroceryRemote {
  late IsarService isarService;

  GroceryRemoteImpl() {
    isarService = IsarService();
  }

  var logger = Logger();

  @override
  Future<List<Grocery>> getGroceries() async {
    final isar = await isarService.db;
    return isar.grocerys.where().findAll();
  }

  @override
  Future<Grocery> addGrocery(Grocery grocery) async {
    final isar = await isarService.db;
    await isar.writeTxn(() => isar.grocerys.put(grocery));
    return grocery;
  }

  @override
  Future<Grocery> updateGrocery(Grocery grocery) async {
    final isar = await isarService.db;
    await isar.writeTxn(() => isar.grocerys.put(grocery));
    return grocery;
  }

  @override
  Stream<List<Grocery>> watchGroceries() async* {
    final isar = await isarService.db;
    yield* isar.grocerys
        .where()
        .offset(0)
        .limit(3)
        .watch(fireImmediately: true);
  }
}
