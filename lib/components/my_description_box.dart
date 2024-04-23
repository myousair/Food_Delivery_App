import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var secondayTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      
      padding: const EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$0.99',
                style: primaryTextStyle,
              ),
              Text(
                'Delivery fee',
                style: secondayTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '15-30 mints',
                style: primaryTextStyle,
              ),
              Text(
                'Delivery time',
                style: secondayTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
