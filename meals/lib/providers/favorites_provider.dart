import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

// when dealing with provider, we can't mutate the data in the original list
// so we have to deal it the immutable way

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toggleMealFavoriteStatu(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      // removing by creating a new list that keep only the "meal"
      // that the m's id not equal to the upcoming meal's id
      return false;
    } else {
      state = [...state, meal]; // adding the new "meal"
      return true;
    }

    // state = [];
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) {
    return FavoriteMealsNotifier();
  },
);
