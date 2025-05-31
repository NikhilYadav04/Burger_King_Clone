import 'package:flutter/material.dart';

class ProviderAddCart extends ChangeNotifier {
  //* variables

  List<String> toppings = [];

  //* utils
  void addToppings(String topping) {
    toppings.add(topping);
    notifyListeners();
  }
}
