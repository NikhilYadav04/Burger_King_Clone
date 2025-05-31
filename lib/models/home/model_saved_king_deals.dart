// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:burger_king_/core/constants/app_images.dart';

class ModelSavedKingDeals {
  String dealName;
  String dealDescName;
  num dealPrice;
  String image;
  String imageBanner;
  String dealCode;
  ModelSavedKingDeals({
    required this.dealName,
    required this.dealDescName,
    required this.dealPrice,
    required this.image,
    required this.imageBanner,
    required this.dealCode,
  });
}

List<ModelSavedKingDeals> savedDataDineInKingDeals = [
  ModelSavedKingDeals(
      dealName: "CHOCOSHAKE",
      dealDescName: "Choco Shake",
      image: AppImagesItems.itemsKingCircle1,
      imageBanner: AppImagesItems.itemsKing1,
      dealPrice: 399,
      dealCode: "SHAKE"),
  ModelSavedKingDeals(
      dealName: "BKVEGGIE",
      dealDescName: "Veggie Burger",
      image: AppImagesItems.itemsKingCircle3,
      imageBanner: AppImagesItems.itemsKing3,
      dealPrice: 299,
      dealCode: "BKVEGGIE"),
];

List<ModelSavedKingDeals> savedDataDeliveryKingDeals = [
  ModelSavedKingDeals(
      dealName: "BKVEGGIE",
      dealDescName: "Veggie Burger",
      image: AppImagesItems.itemsKingCircle3,
      imageBanner: AppImagesItems.itemsKing3,
      dealPrice: 299,
      dealCode: "BKVEGGIE"),
  ModelSavedKingDeals(
      dealName: "PERIPERI",
      dealDescName: "Peri Peri Fries",
      image: AppImagesItems.itemsKingCircle2,
      imageBanner: AppImagesItems.itemsKing2,
      dealPrice: 329,
      dealCode: "PERIPERI"),
];
