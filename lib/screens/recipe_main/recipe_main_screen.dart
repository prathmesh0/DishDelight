import 'package:dishdelight/Model/recipe.dart';
import 'package:flutter/material.dart';

class RecipeMainPage extends StatelessWidget {
  final Recipe recipe;
  const RecipeMainPage({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DishDelight'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _recipeImage(context),
          _recipeDetail(context),
          _recipeIngridients(context),
          _recipeInstructions(context),
        ],
      ),
    );
  }

  Widget _recipeImage(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.40,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(recipe.image),
        ),
      ),
    );
  }

  Widget _recipeDetail(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "${recipe.cuisine}, ${recipe.difficulty}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            recipe.name,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Prep Time : ${recipe.prepTimeMinutes} Minutes | Cook Time: ${recipe.cookTimeMinutes} Minutes",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "${recipe.rating.toString()} ⭐ |  ${recipe.reviewCount} Reviews",
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _recipeIngridients(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Column(
        children: recipe.ingredients.map((i) {
          return Row(
            children: [
              const Icon(Icons.check_box),
              Text("  $i"),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _recipeInstructions(BuildContext context) {
    return Container(
      color: Colors.black87,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: recipe.instructions.map((i) {
          return Text(
            "${recipe.instructions.indexOf(i) + 1} $i\n",
            maxLines: 3,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 15.0,
            ),
          );
        }).toList(),
      ),
    );
  }
}
