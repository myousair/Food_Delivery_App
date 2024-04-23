import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/foods.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddon = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddon[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addtoCart(Food food, Map<Addon, bool> seletedAddons) {
    Navigator.pop(context);
    List<Addon> currentSelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddon[addon] == true) {
        currentSelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addtoCart(food, currentSelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    widget.food.imagepath,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.food.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '\$${widget.food.price}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          widget.food.description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Divider(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                        const SizedBox(height: 10),
                        Text(
                          'Add-ons',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                              borderRadius: BorderRadius.circular(8)),
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.zero,
                              itemCount: widget.food.availableAddons.length,
                              itemBuilder: (context, index) {
                                Addon addon =
                                    widget.food.availableAddons[index];
                                return CheckboxListTile(
                                  title: Text(addon.name),
                                  subtitle: Text(
                                    '\$${addon.price}',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  value: widget.selectedAddon[addon],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddon[addon] = value!;
                                    });
                                  },
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                  MyButton(
                    ontap: () => addtoCart(widget.food, widget.selectedAddon),
                    text: 'Add to Cart',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
            child: Opacity(
          opacity: 0.3,
          child: Container(
            margin: const EdgeInsets.only(left: 25),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
          ),
        ))
      ],
    );
  }
}
