import 'package:flutter/material.dart';

class ProviderAddCart extends ChangeNotifier {
  //* variables

  List<String> toppings = [];
  num cartPrice = 0;

  //* utils
  void addToppings(String topping) {
    toppings.add(topping);
    notifyListeners();
  }

  void removeToppings(String topping) {
    toppings.remove(topping);
    notifyListeners();
  }
}
