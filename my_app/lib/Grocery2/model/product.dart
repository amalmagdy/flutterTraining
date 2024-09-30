class Product{
  String? name;
  String? quantity;
  num? price;
  String? imgUrl;

  Product({this.name, this.quantity, this.price,this.imgUrl});


}
List<Product> productList=[
  Product(name: "Organic bananas",quantity: "7pcs",imgUrl: "assets/images/banana.png",price: 4.99),
  Product(name: "Red Apples",quantity: "1kg",imgUrl: "assets/images/apple.png",price: 6.43),
  Product(name: "Egg chicken red",quantity: "10pcs",imgUrl: "assets/images/egg.png",price: 14.99)
];

List<Product> bevergeList=[
  Product(name: "Noodle ",quantity: "7pcs",imgUrl: "assets/images/noodle.png",price: 4.99),
  Product(name: "Apple & Grape Juice",quantity: "1kg",imgUrl: "assets/images/juice.png",price: 6.43),
  Product(name: "Egg chicken red",quantity: "10pcs",imgUrl: "assets/images/egg.png",price: 14.99)
];