import 'dart:math';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:shoesap/configs/assets.dart';
import 'package:shoesap/model/shoe.dart';

class AppConfigs {
  static bool getRandomBool() {
    Random random = Random();
    return random.nextBool();
  }

  static String getRandomName() {
    List<String> titles = [
      "AIR JORDAN SLANEY JSP",
      "AIR-270",
      "HUSTLED BY A SHOE",
      "NIKE AIR MAX",
    ];
    Random random = Random();
    int randomIndex = random.nextInt(titles.length);

    return titles[randomIndex];
  }

  static int getRandomPrice() {
    Random random = Random();
    int basePrice = 100;
    int priceRange = 3750 - basePrice;
    int numberOfSteps = priceRange ~/ 50;

    int randomStep = random.nextInt(numberOfSteps + 1);
    int totalPrice = basePrice + randomStep * 50;

    return totalPrice;
  }

  static Color getRandomAccentColor() =>
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  static List<Shoe> getShoes() {
    return List.generate(
      12,
      (index) => Shoe(
        name: getRandomName(),
        image: Assets.images(index + 1),
        brand: "Nike",
        description: "description",
        price: "\$${getRandomPrice()}",
        isNew: getRandomBool(),
        quantity: index + 1,
      ),
    );
  }

  static List<String> brands = [
    'Nike',
    'Adidas',
    'Puma',
    'Under Armour',
    'Reebok',
    'New Balance',
    'ASICS',
    'Converse',
    'Fila',
    'Lacoste',
    'Mizuno',
    'UMBRO',
    'Diadora',
    'Kappa',
    'Wilson',
  ];
}
