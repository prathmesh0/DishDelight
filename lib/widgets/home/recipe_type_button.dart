import 'package:flutter/material.dart';

class RecipeTypeButton extends StatefulWidget {
  final Function(String) onMealTypeSelected;
  const RecipeTypeButton({
    super.key,
    required this.onMealTypeSelected,
  });

  @override
  State<RecipeTypeButton> createState() => _RecipeTypeButtonState();
}

class _RecipeTypeButtonState extends State<RecipeTypeButton> {
  @override
  Widget build(BuildContext context) {
    List<String> category = [
      "All 🍲",
      "Snack 🍿",
      "Breakfast 🍳",
      "Lunch 🍔",
      "Dinner 🍝",
    ];
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.045,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < category.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: FilledButton(
                onPressed: () {
                  String mealType = category[i].split(' ')[0];
                  widget.onMealTypeSelected(mealType);
                  print(mealType);
                },
                child: Text(
                  category[i],
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
