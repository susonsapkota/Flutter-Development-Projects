import 'package:find_my_meal/dummy_data.dart';
import 'package:find_my_meal/models/meal.dart';
import 'package:find_my_meal/screens/filters_screen.dart';
import 'package:find_my_meal/screens/meal_detail_screen.dart';
import 'package:find_my_meal/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

import 'screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegeterial': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  List<Meal> _favouriteMeals = [];

  void _setFilters(Map<String, bool> filterdata) {
    setState(() {
      _filters = filterdata;
      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten'] && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose'] && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan'] && !meal.isVegan) {
          return false;
        }
        if (_filters['vegeterial'] && !meal.isVegetarian) {
          return false;
        }
        // if everything is good to go and does nt match above cases.
        return true;
      }).toList();
    });
  }

  void _toggleFavourite(String mealId) {
    final index = _favouriteMeals.indexWhere((meal) => mealId == meal.id);
    if (index >= 0) {
      setState(() {
        _favouriteMeals.removeAt(index);
      });
    } else {
      setState(() {
        _favouriteMeals
            .add(DUMMY_MEALS.firstWhere((meal) => mealId == meal.id));
      });
    }
  }

  bool _isMealFavourite(String mealId) {
    return _favouriteMeals.any((meal) => mealId == meal.id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find My Meal',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amberAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            ),
      ),
      home: TabsScreen(_favouriteMeals),
      routes: {
        CategoryMealsScreen.routeName: (context) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (context) =>
            MealDetailScreen(_toggleFavourite, _isMealFavourite),
        FiltersScreen.routeName: (context) =>
            FiltersScreen(_filters, _setFilters),
      },
    );
  }
}
