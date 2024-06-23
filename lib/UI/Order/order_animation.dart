import 'package:burger_king_/Constants/Colors.dart';
import 'package:burger_king_/UI/order_complete_scree.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class OrderAnimation extends StatefulWidget {
  const OrderAnimation({super.key});

  @override
  _OrderAnimationState createState() => _OrderAnimationState();
}

class _OrderAnimationState extends State<OrderAnimation>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animate;

  @override
  void initState() {
    super.initState();
    _animate = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animate.repeat();

    Future.delayed(Duration(seconds: 6), () {
      if (mounted) {
        _animate.stop();

        Navigator.push(
            context,
            PageTransition(
                child: OrderCompleteScreen(),
                type: PageTransitionType.bottomToTop));
      }
    });
  }

  @override
  void dispose() {
    _animate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 105, vertical: 340),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.transparent,
            ),
            child: Center(
              child: LottieBuilder.asset(
                "assets/order.json",
                controller: _animate,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
