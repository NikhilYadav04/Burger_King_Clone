class WhooperOrderModel{
   String Name;
  String Image;
  String Image1;
  String origPrice;
  String medPrice;
  String largPrice;
  String OrderImage;
  String Energy;
  String PNAME;
  
  WhooperOrderModel(
      {
      required this.Name,
      required this.Image,
      required this.medPrice,
      required this.largPrice,
      
      required this.Image1,
      required this.OrderImage,
      required this.Energy,
      required this.PNAME,
      required this.origPrice
      });
}