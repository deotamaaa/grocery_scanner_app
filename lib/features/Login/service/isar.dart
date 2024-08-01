import 'package:grocery_scanner_app/data/model/grocery_model.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;
  var logger = Logger();

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    logger.d('Opening DB');
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [GrocerySchema],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
