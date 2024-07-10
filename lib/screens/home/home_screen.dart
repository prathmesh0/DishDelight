import 'package:dishdelight/widgets/home/recipe_list.dart';
import 'package:dishdelight/widgets/home/recipe_type_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _mealTypeFilter = "";
  void _updateMealTypeFilter(String mealType) {
    setState(() {
      _mealTypeFilter = mealType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DishDelight'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              RecipeTypeButton(
                onMealTypeSelected: _updateMealTypeFilter,
              ),
              RecipeList(
                mealTypeFilter: _mealTypeFilter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
