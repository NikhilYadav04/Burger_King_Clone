class OrderModel {
  final String Name;
  final String Desc;
   double Price;
   double PriceRep;
   int index = 1;
  final String Mealtype;
  
  

  OrderModel({
    required this.Name,
    required this.Desc,
    required this.Price,
    required this.PriceRep,
    required this.Mealtype
  });

  @override
  String toString() {
    return 'OrderModel(Name: $Name, Desc: $Desc, Price: $Price)';
  }
}
