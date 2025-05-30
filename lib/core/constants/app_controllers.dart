import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class AppControllers {
  //* HomePage Controllers
  static PageController controller = PageController();
  static PageController nextController = PageController();
  static PageController sellerController = PageController();
  static ConfettiController confettiController =
      ConfettiController(duration: Duration(seconds: 3));
}
