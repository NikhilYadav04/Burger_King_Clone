// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:burger_king_/core/constants/app_images.dart';

class ModelAddToppings {
  String toppingName;
  String toppingImage;
  ModelAddToppings({
    required this.toppingName,
    required this.toppingImage,
  });
}

class ModelAddSides {
  String sideName;
  String sideImage;
  num sidePrice;
  ModelAddSides({
    required this.sideName,
    required this.sideImage,
    required this.sidePrice,
  });
}

class ModelAddBeverages {
  String beverageName;
  String beverageImage;
  num beveragePrice;
  ModelAddBeverages({
    required this.beverageName,
    required this.beverageImage,
    required this.beveragePrice,
  });
}

class ModelAddDeserts {
  String desertName;
  String desertImage;
  num desertPrice;
  ModelAddDeserts({
    required this.desertName,
    required this.desertImage,
    required this.desertPrice,
  });
}

List<ModelAddToppings> toppingsDataList = [
  ModelAddToppings(
      toppingName: "No Lettuce", toppingImage: AppImages.sellcardSpring),
  ModelAddToppings(
      toppingName: "No Tomato", toppingImage: AppImages.sellcardTomato),
  ModelAddToppings(
      toppingName: "No Onion", toppingImage: AppImages.sellcardOnion),
  ModelAddToppings(
      toppingName: "No Pickle", toppingImage: AppImages.sellcardPickle),
];

List<ModelAddSides> slidesDataList = [
  ModelAddSides(sideName: "Fries (M)", sideImage: AppImages.sellcardFriesM, sidePrice: 115),
  ModelAddSides(sideName: "Fries (L)", sideImage: AppImages.sellcardFriesL, sidePrice: 130),
  ModelAddSides(sideName: "PeriPeri(M)", sideImage: AppImages.sellcardPeriPeri, sidePrice: 144),
];

List<ModelAddBeverages> beverageDataList = [
  ModelAddBeverages(beverageName: "Coco Cola Medium", beverageImage: AppImages.coke, beveragePrice: 95),
  ModelAddBeverages(beverageName: "Classic Cold Coffee", beverageImage: AppImages.coldCoffee, beveragePrice: 199),
  ModelAddBeverages(beverageName: "Chocolate Thick Shake", beverageImage: AppImages.chocoShake, beveragePrice: 189),
  ModelAddBeverages(beverageName: "Mango Thick Shake", beverageImage: AppImages.mangoShake, beveragePrice: 189),
  ModelAddBeverages(beverageName: "Berry Blast Shake", beverageImage: AppImages.berryShake, beveragePrice: 189),
  ModelAddBeverages(beverageName: "Mocha Frepe", beverageImage: AppImages.mocha, beveragePrice: 269),
];

List<ModelAddDeserts> desertDataList = [
  ModelAddDeserts(desertName: "Chocolate Mousse Cup", desertImage: AppImages.mousse, desertPrice: 109),
  ModelAddDeserts(desertName: "Choco Lava Cup", desertImage: AppImages.lava, desertPrice: 109)
];

