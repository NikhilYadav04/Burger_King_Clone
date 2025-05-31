// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:burger_king_/controllers/controller_seller_dialog.dart';
import 'package:burger_king_/core/constants/app_images.dart';
import 'package:burger_king_/core/global/global_variables.dart';
import 'package:burger_king_/views/widgets/home/widget_seller_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/views/order/order_page_view.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SellerCard extends StatefulWidget {
  String burgerName;
  String burgerImage;
  String burgerEnergy;
  num burgerPrice;
  num burgerMediumMealPrice;
  num burgerLargeMealPrice;

  BuildContext context;
  SellerCard({
    Key? key,
    required this.burgerName,
    required this.burgerImage,
    required this.burgerEnergy,
    required this.burgerPrice,
    required this.burgerMediumMealPrice,
    required this.burgerLargeMealPrice,
    required this.context,
  }) : super(key: key);

  @override
  State<SellerCard> createState() => _SellerCardState();
}

class _SellerCardState extends State<SellerCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderSellerDialog>(builder: (context, provider, _) {
      return Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 160),
              height: 460,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0,
                    ),
                    Text1(widget.burgerName),
                    Text2(provider.mealTypeMap[provider.index]!),
                    SizedBox(
                      height: 10,
                    ),
                    Image1(widget.burgerImage),
                    SizedBox(
                      height: 6,
                    ),
                    Text3(),
                    SizedBox(
                      height: 12,
                    ),
                    cards(
                        provider,
                        widget.burgerImage,
                        widget.burgerPrice,
                        widget.burgerMediumMealPrice,
                        widget.burgerLargeMealPrice),
                    SizedBox(
                      height: 20,
                    ),
                    buttons(
                        context,
                        widget.burgerImage,
                        widget.burgerName,
                        widget.burgerImage,
                        provider.mealTypeMap[provider.index]!,
                        widget.burgerPrice),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
