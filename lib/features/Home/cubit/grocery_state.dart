part of 'grocery_cubit.dart';

@immutable
sealed class GroceryState {}

final class GroceryInitial extends GroceryState {}

final class GrocerySuccess extends GroceryState {
  final List<GroceryEntity> groceries;

  GrocerySuccess(this.groceries);
}

final class GroceryAdded extends GroceryState {
  final GroceryEntity grocery;

  GroceryAdded(this.grocery);
}

final class GroceryError extends GroceryState {
  final String message;

  GroceryError(this.message);
}
