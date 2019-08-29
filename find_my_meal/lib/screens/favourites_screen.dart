import 'package:find_my_meal/models/meal.dart';
import 'package:find_my_meal/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  List<Meal> favouriteMeal;

  FavouritesScreen(this.favouriteMeal);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeal.isEmpty) {
      return Center(
        child: Text('You have no favourites yet, add some'),
      );
    } else {
      return ListView.builder(
          itemCount: favouriteMeal.length,
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favouriteMeal[index].id,
              title: favouriteMeal[index].title,
              imageUrl: favouriteMeal[index].imageUrl,
              duration: favouriteMeal[index].duration,
              complexity: favouriteMeal[index].complexity,
              affordability: favouriteMeal[index].affordability,
            );
          });
    }
  }
}
