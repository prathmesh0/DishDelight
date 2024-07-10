import 'package:dishdelight/Model/recipe.dart';
import 'package:dishdelight/Services/data_service.dart';
import 'package:dishdelight/screens/recipe_main/recipe_main_screen.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatefulWidget {
  final String mealTypeFilter;
  const RecipeList({
    super.key,
    required this.mealTypeFilter,
  });

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('Unable to load data'),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            Recipe recipe = snapshot.data![index];
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecipeMainPage(
                    recipe: recipe,
                  );
                }));
              },
              contentPadding: const EdgeInsets.only(top: 20),
              isThreeLine: true,
              title: Text(
                recipe.name,
              ),
              subtitle: Text(
                '${recipe.cuisine}\nDifficulty: ${recipe.difficulty}',
              ),
              leading: Image.network(recipe.image),
              trailing: Text(
                "${recipe.rating.toString()} ⭐",
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          },
        );
      },
      future: DataService().getRecipes(widget.mealTypeFilter),
    ));
  }
}
