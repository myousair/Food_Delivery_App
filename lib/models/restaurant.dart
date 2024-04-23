import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/foods.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: 'Cheese burger',
      description:
          'A cheeseburger is a grilled or seared beef patty topped with melted cheese, nestled in a soft bun with lettuce.',
      imagepath: 'images/burgers/cheese burger.png',
      price: 5.75,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 2),
      ],
    ),
    Food(
      name: 'BBQ Bacon burger',
      description:
          'A BBQ bacon burger features a juicy beef patty topped with crispy bacon, melted cheese, and tangy barbecue sauce.',
      imagepath: 'images/burgers/images.jpg',
      price: 8.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Grilled Onions', price: 0.99),
        Addon(name: 'Jalapenos', price: 1.49),
        Addon(name: 'Extra BBQ Sauce', price: 1.99),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description:
          'A veggie burger is a meatless patty made from vegetables, grains, or legumes, served in a bun with lettuce, tomato, onion',
      imagepath: 'images/burgers/images veegie.jpeg',
      price: 10.50,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Vegan Cheese', price: 0.99),
        Addon(name: 'Grilled Mashroom', price: 1.99),
        Addon(name: 'Hummus Spreads', price: 1.89),
      ],
    ),
    Food(
      name: 'Aloha Burger',
      description:
          'An Aloha burger combines a beef patty with grilled pineapple, teriyaki sauce, melted cheese, and sometimes bacon.',
      imagepath: 'images/burgers/images Aloha.jpeg',
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Teriyaki Glaze', price: 0.99),
        Addon(name: 'Extra Pineapple', price: 1.99),
        Addon(name: 'Bacon', price: 2.10),
      ],
    ),
    Food(
      name: 'chicken burger',
      description:
          'A Blue Moon burger features a beef patty topped with blue cheese, caramelized onions..',
      imagepath: 'images/burgers/images blueMoon.jpeg',
      price: 12.15,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Suateed Mashroom', price: 0.99),
        Addon(name: 'Fried Egg', price: 1.99),
        Addon(name: 'Spicy Mayo', price: 2),
      ],
    ),

    // Salad

    Food(
      name: 'Ceaser Salad',
      description:
          'Caesar salad features crisp romaine lettuce, Parmesan cheese, croutons, and a creamy dressing with garlic and anchovy flavors.',
      imagepath: 'images/salads/images (1).jpeg',
      price: 7.30,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 0.99),
        Addon(name: 'Anchovies', price: 1.99),
        Addon(name: 'Extra Parmesan', price: 2),
      ],
    ),
    Food(
      name: 'Greek Salad',
      description:
          'Greek salad is a vibrant blend of tomatoes, cucumbers, olives, and feta cheese, dressed with olive oil and herbs.',
      imagepath: 'images/salads/greek.png',
      price: 8.70,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Shrimp', price: 0.99),
        Addon(name: 'Kalmata Olives', price: 1.49),
        Addon(name: 'Feta Cheese', price: 2.15),
      ],
    ),
    Food(
      name: 'Asian Sesame Salad',
      description:
          'Asian sesame salad includes mixed greens, shredded carrots, and sesame seeds, dressed with sesame-soy vinaigrette.',
      imagepath: 'images/salads/asian.jpeg',
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Mandarin Orange', price: 0.99),
        Addon(name: 'Almond Silver', price: 1.99),
        Addon(name: 'Extra Teriyaki Chiken', price: 2),
      ],
    ),
    Food(
      name: 'Quinoa Salad',
      description:
          'Quinoa salad combines cooked quinoa, vegetables, and herbs, dressed with a lemon vinaigrette.',
      imagepath: 'images/salads/images quinoa.jpeg',
      price: 10.95,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Avocado', price: 0.99),
        Addon(name: 'Feta Cheese', price: 1.49),
        Addon(name: 'Grilled Chicken', price: 1.99),
      ],
    ),
    Food(
      name: 'South West Chicken salad',
      description:
          'Southwest chicken salad features grilled chicken, black beans, corn, tomatoes, and avocado on mixed greens, dressed with a zesty vinaigrette.',
      imagepath: 'images/salads/images south chiken.jpeg',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Pico de Gallo', price: 1.49),
        Addon(name: 'Guacamole', price: 1.99),
      ],
    ),
// Sides

    Food(
      name: 'Sweet Potato Fries',
      description:
          'Sweet potato fries are crispy, seasoned strips of sweet potato, often baked or fried until golden brown.',
      imagepath: 'images/sides/sesame-sweet-potatoes-72f0cfa.jpg',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Truffle Oil', price: 1.49),
        Addon(name: 'Cajun SPice', price: 1.99),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description:
          'Onion rings are crispy, deep-fried slices of onion coated in batter or breadcrumbs.',
      imagepath: 'images/sides/onion.jpg',
      price: 6.75,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Ranch Dip', price: 0.99),
        Addon(name: 'Spicy Mayo', price: 1.49),
        Addon(name: 'Parmesan Dust', price: 1.99),
      ],
    ),
    Food(
      name: 'Sweet Potato Fries',
      description:
          'Sesame fries are potato fries seasoned with sesame seeds and other spices, often baked or fried until golden and crispy.',
      imagepath: 'images/sides/sesame-sweet-potatoes-72f0cfa.jpg',
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra spicy', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Garlic Bread',
      description:
          'Garlic bread is toasted bread spread with garlic butter and often sprinkled with herbs.',
      imagepath: 'images/sides/garlic.png',
      price: 9.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Garlic', price: 0.99),
        Addon(name: 'Mozzarella Cheese', price: 1.49),
        Addon(name: 'Marinara Dip', price: 1.99),
      ],
    ),
    Food(
      name: 'Garlic Mac & Cheese Bits',
      description:
          'Garlic mac and cheese bits are small, fried pieces of macaroni and cheese infused with garlic flavor and a crispy coating.',
      imagepath: 'images/sides/imageschick.jpeg',
      price: 8.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Sour Cream', price: 0.99),
        Addon(name: 'Bacon Bits', price: 1.49),
        Addon(name: 'Green Onion', price: 1.9),
      ],
    ),
    // desserts

    Food(
      name: 'Choclate Brownie',
      description:
          'Chocolate brownie is a rich, dense, and fudgy baked treat made with cocoa powder or melted chocolate, sugar, eggs, and flour.',
      imagepath: 'images/desserts/brownie.jpg',
      price: 12.80,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanila Ice Cream', price: 0.99),
        Addon(name: 'Hot Fudge', price: 1.49),
        Addon(name: 'Wipped Cream', price: 1.99),
      ],
    ),
    Food(
      name: 'Chesse Cake',
      description:
          'Cheesecake is a rich, creamy dessert with a cheese filling on a crumb crust, often topped with fruit.',
      imagepath: 'images/desserts/cheesecake.png',
      price: 9.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Stawberry Topping', price: 0.99),
        Addon(name: 'Choclate Chips', price: 1.49),
        Addon(name: 'Blueberry Chips', price: 1.99),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'Apple pie is a classic dessert with spiced, sweetened apple slices encased in a flaky pastry crust.',
      imagepath: 'images/desserts/apple pie png.png',
      price: 5.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Caramel Sauce', price: 0.99),
        Addon(name: 'Vanila Ice Cream', price: 1.49),
        Addon(name: 'Cinnamon', price: 1.99),
      ],
    ),
    Food(
      name: 'Red Velvet Lava Cake',
      description:
          'Red velvet lava cake is a warm, individual cake with a red velvet exterior and a gooey, molten chocolate center.',
      imagepath: 'images/desserts/red Cake.jpg',
      price: 13.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Raspberry Sauce', price: 0.99),
        Addon(name: 'Cream Sheese Icing', price: 1.49),
        Addon(name: 'Choclate Sprinkle', price: 1.99),
      ],
    ),
    Food(
      name: 'Pudding',
      description:
          'Pudding is a creamy dessert made with milk, sugar, and a thickening agent, often flavored with vanilla or chocolate.',
      imagepath: 'images/desserts/puddding.png',
      price: 11.50,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Fresh Fruits ', price: 0.99),
        Addon(name: 'Nuts', price: 1.49),
        Addon(name: 'Toffee its', price: 1.99),
      ],
    ),

    // drinks
    Food(
      name: 'Lemonade',
      description:
          'Lemonade is a refreshing drink made from lemon juice, water, and sugar, often served chilled.',
      imagepath: 'images/drinks/lemonda.png',
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Fresh mint leaves', price: 0.99),
        Addon(name: 'Ginger or other spices', price: 1.49),
        Addon(name: 'Chia seeds', price: 1.99),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description:
          'Iced tea is chilled, sweetened tea served with lemon and ice.',
      imagepath: 'images/drinks/Iced Tea.png',
      price: 12.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Herbal teas for blending', price: 2.50),
        Addon(name: 'Honey or flavored syrups', price: 3.99),
        Addon(name: 'Spices (cinnamon, ginger, or cloves)', price: 4.20),
      ],
    ),
    Food(
      name: 'Smoothie',
      description:
          'A smoothie is a thick, blended drink made from fruits, vegetables, yogurt or milk, and ice, sometimes sweetened with honey or syrup.',
      imagepath: 'images/drinks/smoothie.png',
      price: 11.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Granola', price: 2.50),
        Addon(name: 'Chia seeds or flaxseed', price: 3.99),
        Addon(name: 'Protein powder', price: 5.70),
      ],
    ),
    Food(
      name: 'Mojito ',
      description:
          'Mojito is a refreshing cocktail made with white rum, fresh lime juice, mint leaves, sugar, and soda water, served over ice.',
      imagepath: 'images/drinks/mojito.png',
      price: 10.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Different types of rum (aged, spiced)', price: 2.50),
        Addon(name: 'Bitters for depth of flavor', price: 3.99),
        Addon(name: 'Cucumber slices for a twist', price: 5.89),
      ],
    ),
    Food(
      name: 'Caramel Macchiato',
      description:
          'A caramel macchiato is a coffee drink made with espresso, steamed milk, and vanilla syrup, topped with caramel drizzle.',
      imagepath: 'images/drinks/caramel.png',
      price: 9.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra caramel drizzle', price: 2.50),
        Addon(name: 'A shot of espresso for extra strength', price: 3.99),
        Addon(name: 'Different types of milk (oat, almond, soy)', price: 4.20),
      ],
    ),
  ];

  final List<CartItem> _cart = [];

  String _deliveryAddress = 'Block 00 House 00 Sector 11-F New Karachi';

  List<Food> get menu => _menu;

  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  void addtoCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameAddons && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (_cart[cartIndex].quantity > 1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();

    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    String _formattedDate =
        DateFormat('yyyy-MM-dd:mm:ss').format(DateTime.now());

    receipt.writeln(_formattedDate);
    receipt.writeln();
    receipt.writeln('----------');

    for (final cartItem in _cart) {
      receipt.writeln(
          '${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}');

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln('  Add-ons: ${_formatAddon(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }
    receipt.writeln('-----------');
    receipt.writeln();
    receipt.writeln('Total Items : ${getTotalItemCount()}');
    receipt.writeln('Total Price : ${getTotalPrice()}');
    receipt.writeln();
    receipt.writeln('Delivering to: $deliveryAddress');

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return '\$${price.toStringAsFixed(2)}';
  }

  String _formatAddon(List<Addon> addon) {
    return addon
        .map((addon) => '${addon.name} (${_formatPrice(addon.price)})')
        .join(', ');
  }
}
