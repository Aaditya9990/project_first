import 'dart:ui';

import 'package:flutter/material.dart';

class Fruit {
  final String name;
  final Color color;

  Fruit(this.name, this.color);
}

class Date {
  final String weekdays;
  final String datenumber;

  Date(this.weekdays, this.datenumber);
}

final List<Fruit> item = [
  Fruit('Apple', Colors.red),
  Fruit('Banana', Colors.yellow),
  Fruit('Orange', Colors.orange),
  Fruit('Mango', Colors.orangeAccent),
  Fruit('Grapes', Colors.purple),
  Fruit('Pineapple', Colors.yellowAccent),
  Fruit('Strawberry', Colors.redAccent),
  Fruit('Blueberry', Colors.blue),
  Fruit('Kiwi', Colors.green),
  Fruit('Watermelon', Colors.greenAccent),
  Fruit('Peach', Colors.pinkAccent),
  Fruit('Pear', Colors.lightGreen),
  Fruit('Cherry', Colors.red[700]!),
  Fruit('Lemon', Colors.yellow[600]!),
  Fruit('Lime', Colors.lime),
  Fruit('Pomegranate', Colors.red[900]!),
  Fruit('Raspberry', Colors.pink[700]!),
  Fruit('Blackberry', Colors.purple[900]!),
  Fruit('Dragon Fruit', Colors.pink),
  Fruit('Papaya', Colors.orange[700]!),
  Fruit('Guava', Colors.green[300]!),
  Fruit('Plum', Colors.purple[700]!),
  Fruit('Apricot', Colors.orange[400]!),
  Fruit('Fig', Colors.purple[800]!),
  Fruit('Coconut', Colors.brown),
  Fruit('Lychee', Colors.pink[300]!),
  Fruit('Passion Fruit', Colors.yellow[800]!),
  Fruit('Tangerine', Colors.orange[600]!),
  Fruit('Cranberry', Colors.red[800]!),
  Fruit('Grapefruit', Colors.pink[400]!),
];

final List<Date> date = [
  Date("Monday", "1"),
  Date("Tuesday", "2"),
  Date("Wednesday", "3"),
  Date("Thursday", "4"),
  Date("Friday", "5"),
  Date("Saturday", "6"),
  Date("Sunday", "7"),
  Date("Monday", "8"),
  Date("Tuesday", "9"),
  Date("Wednesday", "10"),
  Date("Thursday", "11"),
  Date("Friday", "12"),
  Date("Saturday", "13"),
  Date("Sunday", "14"),
  Date("Monday", "1"),
  Date("Tuesday", "2"),
  Date("Wednesday", "3"),
  Date("Thursday", "4"),
  Date("Friday", "5"),
  Date("Saturday", "6"),
  Date("Sunday", "7"),
  Date("Monday", "8"),
  Date("Tuesday", "9"),
  Date("Wednesday", "10"),
  Date("Thursday", "11"),
  Date("Friday", "12"),
  Date("Saturday", "13"),
  Date("Sunday", "14"),
];