// ignore_for_file: public_member_api_docs, sort_constructors_first
class ModelBestSeller {
  String burgerName;
  String burgerDesc;
  String burgerEnergy;
  num burgerPrice;
  num burgerMediumMealPrice;
  num burgerLargeMealPrice;
  ModelBestSeller(
      {required this.burgerName,
      required this.burgerDesc,
      required this.burgerEnergy,
      required this.burgerPrice,
      required this.burgerMediumMealPrice,
      required this.burgerLargeMealPrice});
}

List<ModelBestSeller> bestSellerDataList = [
  ModelBestSeller(
      burgerName: "Veg Hooper",
      burgerDesc: "Our Tribute to classic american taste. The New BK...",
      burgerEnergy: "681.2 Kcal",
      burgerPrice: 179,
      burgerMediumMealPrice: 328,
      burgerLargeMealPrice: 338),
  ModelBestSeller(
      burgerName: "BK Veggie Burger",
      burgerDesc:
          "Thick Paneer Patty, loads of sauces in soft square masala...",
      burgerEnergy: "352.5 Kcal",
      burgerPrice: 139,
      burgerMediumMealPrice: 288,
      burgerLargeMealPrice: 298),
  ModelBestSeller(
      burgerName: "BK Chicken Burger",
      burgerDesc: "ur signature Whooper with 7 layers between the buns.Ex...",
      burgerEnergy: "415 Kcal",
      burgerPrice: 149,
      burgerMediumMealPrice: 298,
      burgerLargeMealPrice: 308),
  ModelBestSeller(
      burgerName: "Paneer Royale Burger",
      burgerDesc: "  Our Tribute to classic american taste. BK veg patty...",
      burgerEnergy: "557.5 Kcal",
      burgerPrice: 199,
      burgerMediumMealPrice: 358,
      burgerLargeMealPrice: 368)
];
