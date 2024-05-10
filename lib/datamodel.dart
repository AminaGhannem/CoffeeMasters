class Product {
  int id;
  String name;
  double price;
  String image;
  String get imageURL =>
      "https://firtman.github.io/coffeemasters/api/images/$image";

  //Constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  //Factory constructor
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'] as int,
        name: json['name'] as String,
        price: json['price'] as double,
        image: json['image'] as String);
  }
}

class Category {
  String name;
  List<Product> products;

  Category(this.name, this.products);

  factory Category.fromJson(Map<String, dynamic> json) {
    var productsJson = json['products'] as Iterable<dynamic>;
    var products = productsJson.map((p) => Product.fromJson(p)).toList();
    return Category(json['name'] as String, products);
  }
}

class ItemInCart {
  Product product;
  int quantity;

  ItemInCart(this.product, this.quantity);
}
