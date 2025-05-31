import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:burger_king_/controllers/controller_crown_reward.dart';
import 'package:burger_king_/core/constants/Colors.dart';
import 'package:burger_king_/core/constants/app_colors.dart';
import 'package:burger_king_/core/constants/app_images.dart';
import 'package:burger_king_/core/constants/app_strings.dart';
import 'package:burger_king_/models/home/model_best_seller.dart';
import 'package:burger_king_/models/home/model_king_deals.dart';
import 'package:burger_king_/views/order/order_seller_card_view.dart';
import 'package:burger_king_/views/primary/primary_crown-rewards_view.dart';
import 'package:burger_king_/views/primary/primary_menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

Widget DrawerIcon(GlobalKey<ScaffoldState> scaffoldKey) {
  return IconButton(
    onPressed: () {
      scaffoldKey.currentState?.openDrawer();
    },
    icon: Icon(
      Icons.menu,
      color: Colors.white,
      size: 34,
    ),
  );
}

Widget imageSlider() {
  return Container(
    color: BackGround,
    height: 220,
    width: double.infinity,
    child: Expanded(
      child: AnotherCarousel(
        images: [
          Image.asset(AppImagesItems.items1),
          Image.asset(AppImagesItems.items2),
          Image.asset(AppImagesItems.items3),
          Image.asset(AppImagesItems.items6),
        ],
        dotSize: 4,
        dotColor: Colors.white,
        indicatorBgPadding: 5,
        autoplay: true,
        autoplayDuration: Duration(seconds: 4),
      ),
    ),
  );
}

Widget imageSlider2(BuildContext context, PageController _controller) {
  return Container(
    //color: Colors.amber,
    padding: EdgeInsets.only(left: 11),
    width: double.infinity,
    height: 165,
    child: Row(
      children: [
        Expanded(
          flex: 10,
          child: PageView(
            controller: _controller,
            children: [
              menuCard(context, AppImagesItems.itemsA),
              menuCard(context, AppImagesItems.itemsB),
              menuCard(context, AppImagesItems.itemsC),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: SizedBox(
                height: 165,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Stack(
                    children: [
                      Positioned(
                        right: constraints.maxWidth * 0.88,
                        child: Container(
                          height: 165,
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * 0.4,
                        right: constraints.maxWidth * 0.15,
                        child: InkWell(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: SwitchColor,
                          ),
                        ),
                      )
                    ],
                  );
                })))
      ],
    ),
  );
}

Widget menuCard(BuildContext context, String image) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context,
          PageTransition(child: Burger(), type: PageTransitionType.fade));
    },
    child: Container(
      child: Column(
        children: [
          Image.asset(
            image,
          ),
        ],
      ),
    ),
  );
}

Widget menuText() {
  return Container(
    padding: EdgeInsets.only(left: 12),
    width: double.infinity,
    child: Text(
      AppStrings.menuText,
      style: TextStyle(
          fontSize: 28, fontFamily: "Nova", color: AppColor.brownColor),
    ),
  );
}

Widget dealText(String text) {
  return Container(
    padding: EdgeInsets.only(left: 14),
    width: double.infinity,
    child: Text(
      text,
      style: TextStyle(fontSize: 28, fontFamily: "Nova", color: Brown),
    ),
  );
}

Widget imageSlider3(BuildContext context, PageController _controller) {
  return Container(
      padding: EdgeInsets.only(left: 2),
      width: double.infinity,
      height: 165,
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: PageView(
              controller: _controller,
              children: [
                sliderCard(
                    context, dataKingDeals[0], AppImagesItems.itemsKing1),
                sliderCard(
                    context, dataKingDeals[1], AppImagesItems.itemsKing2),
                sliderCard(
                    context, dataKingDeals[2], AppImagesItems.itemsKing3),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
                height: 165,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Stack(
                    children: [
                      Positioned(
                        right: constraints.maxWidth * 0.89,
                        child: Container(
                          height: 165,
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                      Positioned(
                        top: constraints.maxHeight * 0.4,
                        right: constraints.maxWidth * 0.16,
                        child: InkWell(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: SwitchColor,
                          ),
                        ),
                      )
                    ],
                  );
                })),
          ),
        ],
      ));
}

Widget bottomSh(ModelKingDeals model , BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 0),
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.transparent),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 350),
          color: Colors.transparent,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 442.7,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 150,
                child: CircleAvatar(
                  child: Image.asset(model.image),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                model.dealName,
                style: TextStyle(
                    fontFamily: "HornB",
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Free ${model.dealDescName} on Orders Above Rs.${model.dealPrice}",
                style: TextStyle(
                    fontFamily: "Nova",
                    color: Colors.grey.shade700,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90,
                width: 340,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Text(
                        model.dealCode,
                        style: TextStyle(
                            fontFamily: "HornB",
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.copy,
                          color: Colors.grey.shade800,
                          size: 28,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You can always find this voucher in Saved King Deals",
                style: TextStyle(
                    fontFamily: "Nova",
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget sliderCard(BuildContext context, ModelKingDeals model, String image) {
  return InkWell(
    onTap: () {
      showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (BuildContext context) {
            return bottomSh(model, context);
          });
    },
    child: Container(
        child: Image.asset(
      image,
    )),
  );
}

Widget rewardCard(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
    height: 110,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white),
    child: Row(
      children: [
        Expanded(
            flex: 6,
            child: LayoutBuilder(builder: (context, constraints) {
              return Padding(
                padding: EdgeInsets.only(left: constraints.maxWidth * 0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Crown Rewards Balance",
                      style: TextStyle(
                          fontFamily: "Nova",
                          fontSize: 21,
                          color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Crown(), type: PageTransitionType.fade));
                      },
                      child: Container(
                        margin:
                            EdgeInsets.only(top: constraints.maxHeight * 0.18),
                        height: 30,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadiusDirectional.circular(8)),
                        child: Center(
                          child: Text(
                            "Redeem Points Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nova",
                                fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })),
        Expanded(
            flex: 3,
            child: LayoutBuilder(builder: (context, constraints) {
              return Consumer<ProviderCrownReward>(
                builder: (context, _provider, _) {
                  return Container(
                    padding:
                        EdgeInsets.only(right: constraints.maxWidth * 0.07),
                    //color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              AppImages.menuIconCR,
                              height: 26,
                              width: 26,
                              color: Colors.black,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: constraints.maxWidth * 0.05),
                              child: Text(
                                "${_provider.crowsCount}",
                                style: TextStyle(
                                    fontFamily: "Nova",
                                    fontSize: 22,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.18),
                          child: Column(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            child: Crown(),
                                            type: PageTransitionType.fade));
                                  },
                                  child: Text(
                                    "Know More",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              Container(
                                height: 1.5,
                                width: 88,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }))
      ],
    ),
  );
}

Widget imageSlider4(BuildContext context, PageController _sellerController) {
  return Container(
      padding: EdgeInsets.only(left: 15),
      width: double.infinity,
      height: 375,
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: PageView(
              controller: _sellerController,
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: sellerSliderCard(
                          AppImages.sellcard_1,
                          AppImages.sellcard_A,
                          AppImages.sellcardMed,
                          AppImages.sellcardLarge,
                          bestSellerDataList[0].burgerName,
                          bestSellerDataList[0].burgerDesc,
                          bestSellerDataList[0].burgerEnergy,
                          bestSellerDataList[0].burgerPrice,
                          bestSellerDataList[0].burgerMediumMealPrice,
                          bestSellerDataList[0].burgerLargeMealPrice,
                          context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: sellerSliderCard(
                          AppImages.sellcard_2,
                          AppImages.sellcard_B,
                          AppImages.sellcardMed,
                          AppImages.sellcardLarge,
                          bestSellerDataList[1].burgerName,
                          bestSellerDataList[1].burgerDesc,
                          bestSellerDataList[1].burgerEnergy,
                          bestSellerDataList[1].burgerPrice,
                          bestSellerDataList[1].burgerMediumMealPrice,
                          bestSellerDataList[1].burgerLargeMealPrice,
                          context),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: sellerSliderCard(
                          AppImages.sellcard_3,
                          AppImages.sellcard_C,
                          AppImages.sellcardMed,
                          AppImages.sellcardLarge,
                          bestSellerDataList[2].burgerName,
                          bestSellerDataList[2].burgerDesc,
                          bestSellerDataList[2].burgerEnergy,
                          bestSellerDataList[2].burgerPrice,
                          bestSellerDataList[2].burgerMediumMealPrice,
                          bestSellerDataList[2].burgerLargeMealPrice,
                          context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: sellerSliderCard(
                          AppImages.sellcard_4A,
                          AppImages.sellcard_D,
                          AppImages.sellcardMed,
                          AppImages.sellcardLarge,
                          bestSellerDataList[3].burgerName,
                          bestSellerDataList[3].burgerDesc,
                          bestSellerDataList[3].burgerEnergy,
                          bestSellerDataList[3].burgerPrice,
                          bestSellerDataList[3].burgerMediumMealPrice,
                          bestSellerDataList[3].burgerLargeMealPrice,
                          context),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: SizedBox(
                  height: 375,
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Stack(
                      children: [
                        Positioned(
                          right: constraints.maxWidth * 0.88,
                          child: Container(
                            height: constraints.maxHeight,
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        Positioned(
                          top: constraints.maxHeight * 0.4,
                          right: constraints.maxWidth * 0.15,
                          child: InkWell(
                            onTap: () {
                              _sellerController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.linear);
                            },
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 20,
                              color: SwitchColor,
                            ),
                          ),
                        )
                      ],
                    );
                  })))
        ],
      ));
}

Widget sellerSliderCard(
    String burgerImage,
    String burgerImageDisplay,
    String burgerImageMedium,
    String burgerImageLarge,
    String burgerName,
    String burgerDesc,
    String burgerEnergy,
    num burgerPrice,
    num burgerMediumPrice,
    num burgerLargePrice,
    BuildContext context) {
  return Container(
    height: 175,
    margin: EdgeInsets.only(right: 8),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8)),
    child: Container(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Image.asset(
                burgerImage,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(left: 12, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      burgerName,
                      style: TextStyle(
                          fontFamily: "Nova", fontSize: 23, color: Brown),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      burgerDesc,
                      style: TextStyle(
                          fontFamily: "Nova",
                          fontSize: 15.5,
                          color: Colors.brown.shade700),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        burgerEnergy,
                        style: TextStyle(
                            fontFamily: "Nova",
                            fontSize: 18,
                            color: Colors.brown.shade700),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹ ${burgerPrice}",
                            style: TextStyle(
                                fontFamily: "Nova", fontSize: 20, color: Brown),
                          ),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: SellerCard(
                                          burgerName: burgerName,
                                          burgerImage: burgerImage,
                                          burgerImageDisplay:
                                              burgerImageDisplay,
                                          burgerEnergy: burgerEnergy,
                                          burgerPrice: burgerPrice,
                                          burgerMediumMealPrice:
                                              burgerMediumPrice,
                                          burgerLargeMealPrice:
                                              burgerLargePrice,
                                          context: context),
                                      backgroundColor: Colors.transparent,
                                    );
                                  });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 35,
                              width: 85,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(14)),
                              child: Row(children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Add",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Nova",
                                      fontSize: 16),
                                ),
                                Icon(
                                  Icons.add,
                                  size: 18,
                                  color: Colors.white,
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
