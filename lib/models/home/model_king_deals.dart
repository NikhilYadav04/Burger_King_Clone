// ignore_for_file: public_member_api_docs, sort_constructors_first
class ModelKingDeals {
  String dealName;
  String dealDescName;
  num dealPrice;
  String dealCode;
  ModelKingDeals({
    required this.dealName,
    required this.dealDescName,
    required this.dealPrice,
    required this.dealCode,
  });
}

List<ModelKingDeals> dataKingDeals = [
  ModelKingDeals(
      dealName: "CHOCOSHAKE",
      dealDescName: "Choco Shake",
      dealPrice: 399,
      dealCode: "SHAKE"),
  ModelKingDeals(
      dealName: "PERIPERI",
      dealDescName: "Peri Peri Fries",
      dealPrice: 329,
      dealCode: "PERIPERI"),
  ModelKingDeals(
      dealName: "BKVEGGIE",
      dealDescName: "Veggie Burger",
      dealPrice: 299,
      dealCode: "BKVEGGIE"),
];
