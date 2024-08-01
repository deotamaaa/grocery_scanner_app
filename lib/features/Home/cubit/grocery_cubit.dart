import 'package:bloc/bloc.dart';
import 'package:grocery_scanner_app/domain/entities/grocery_entities.dart';
import 'package:grocery_scanner_app/domain/usecases/grocery_usecase.dart';
import 'package:logger/web.dart';
import 'package:meta/meta.dart';

part 'grocery_state.dart';

class GroceryCubit extends Cubit<GroceryState> {
  final GroceryUseCase groceryUseCase;
  var logger = Logger();
  GroceryCubit(this.groceryUseCase) : super(GroceryInitial());

  void getGrocery() async {
    emit(GroceryInitial());
    try {
      final groceries = await groceryUseCase.getGrocery();
      emit(GrocerySuccess(groceries));
    } catch (e) {
      emit(GroceryError(e.toString()));
    }
  }

  void addGrocery(GroceryEntity grocery) async {
    emit(GroceryInitial());
    try {
      final addGrocery = await groceryUseCase.addGrocery(grocery);
      emit(GroceryAdded(addGrocery));
    } catch (e) {
      logger.e(e.toString());
      emit(GroceryError(e.toString()));
    }
  }

  void updateGrocery(GroceryEntity grocery) async {
    emit(GroceryInitial());
    try {
      final updatedGrocery = await groceryUseCase.updateGrocery(grocery);
      emit(GroceryAdded(updatedGrocery));
    } catch (e) {
      logger.e(e.toString());
      emit(GroceryError(e.toString()));
    }
  }

  void watchGroceries() {
    emit(GroceryInitial());
    groceryUseCase.watchGroceries().listen((groceries) {
      if (groceries.isEmpty) {
        emit(GroceryError('No groceries found'));
        return;
      }
      emit(GrocerySuccess(groceries));
    });
  }
}
