import 'package:flutter/material.dart';

class CategoryCardBuilder extends StatelessWidget {
  final ValueNotifier<String> selectedCategoryNotifier;
  final ValueNotifier<int> selectedIndexNotifier;

  const CategoryCardBuilder({
    required this.selectedCategoryNotifier,
    required this.selectedIndexNotifier,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> category = [
      "Pizza",
      "Burger",
      "Shawerma",
      "Soup",
      "Grilled",
      "Pasta"
    ];

    return SizedBox(
      height: 50,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return ValueListenableBuilder<int>(
            valueListenable: selectedIndexNotifier,
            builder: (context, selectedIndex, child) {
              final bool isSelected = selectedIndex == index;
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: InkWell(
                      onTap: () {
                        selectedCategoryNotifier.value = category[index];
                        selectedIndexNotifier.value = index;
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 25),
                        color: isSelected
                            ? Colors.deepOrangeAccent
                            : Colors.orange,
                        child: Text(
                          category[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
