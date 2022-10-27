import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meal-detail";

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mealId = (ModalRoute.of(context)!.settings.arguments) as String;
    final selectMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectMeal.title}'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle(context, 'Ingredients'),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 250,
            width: 300,
            child: ListView.builder(
                itemBuilder: (context, index) => Card(
                      color: Theme.of(context).accentColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(selectMeal.ingredients[index]),
                      ),
                    ),
                itemCount: selectMeal.ingredients.length),
          ),
          buildSectionTitle(context, 'Steps'),
        ],
      ),
    );
  }
}
