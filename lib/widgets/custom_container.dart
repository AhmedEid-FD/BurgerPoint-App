import 'package:flutter/material.dart';
import 'package:restaurant_app/constant/constant.dart';
import 'package:restaurant_app/widgets/category_card_builder.dart';
import 'package:restaurant_app/widgets/menu_list_builder.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey();
  final ValueNotifier<String> selectedCategoryNotifier =
      ValueNotifier<String>("Pizza");
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Positioned(
      top: 220,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.yellow[100],
          child: Column(
            children: [
              const SizedBox(height: 65),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 15),
                  ValueListenableBuilder(
                    valueListenable: controller,
                    builder: (context, TextEditingValue value, child) {
                      return Text(
                        value.text.isEmpty ? "Default Name" : value.text,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text(
                            "Change The Restaurant Name",
                            style: TextStyle(fontSize: 20),
                          ),
                          content: Form(
                            key: globalKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextFormField(
                                  controller: controller,
                                  decoration: InputDecoration(
                                    hintText: "Enter Restaurant Name",
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      color: Colors.orange,
                                      child: const Text("Cancel"),
                                    ),
                                    const SizedBox(width: 10),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      color: Colors.orange,
                                      child: const Text("Save"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                ],
              ),
              Expanded(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: CategoryCardBuilder(
                        selectedCategoryNotifier: selectedCategoryNotifier,
                        selectedIndexNotifier: selectedIndexNotifier,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: ScreenSize.constHeight,
                        child: MenuListBuilder(
                          selectedCategoryNotifier: selectedCategoryNotifier,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
