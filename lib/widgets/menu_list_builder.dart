import 'package:flutter/material.dart';
import 'package:restaurant_app/models/category_model.dart';

class MenuListBuilder extends StatelessWidget {
  final ValueNotifier<String> selectedCategoryNotifier;

  MenuListBuilder({
    required this.selectedCategoryNotifier,
    super.key,
  });

  final Map<String, List<MenuModel>> menu = {
    "Pizza": pizzaList,
    "Burger": burgerList,
    "Shawerma": shawermaList,
    "Soup": soupList,
    "Grilled": grilledList,
    "Pasta": pastaList,
  };

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: selectedCategoryNotifier,
      builder: (context, selectedCategory, child) {
        final items = menu[selectedCategory] ?? [];
        return GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return MenuItemCard(item: item);
          },
        );
      },
    );
  }
}

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    required this.item,
    super.key,
  });

  final MenuModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(item.img),
        ),
      ),
      margin: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 80,
        color: Colors.black54,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                item.weight,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  color: Colors.orange,
                  child: Text(
                    item.price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
