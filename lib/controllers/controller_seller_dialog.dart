import 'package:flutter/material.dart';

class ProviderSellerDialog extends ChangeNotifier {
  //* variables
  num totalPrice = 0.0;
  num index = 1;
  num refIndex = 1;
  num burgerOriginalPrice = 0.0;
  String burgerMealType = "(BURGER ONLY)";

  Map<num, String> mealTypeMap = {
    1: "(BURGER ONLY)",
    2: "(MEDIUM MEAL)",
    3: "(LARGE MEAL)"
  };

  //* utils
  void changeIndex(num val) {
    index = val;
    refIndex = index;
    notifyListeners();
  }

  void changeTotalPrice(num val) {
    totalPrice = val;
    notifyListeners();
  }
}
