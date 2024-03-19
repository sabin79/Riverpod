class Product {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  ProductRating rating;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.rating,
    required this.image,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        price: json['price'].toDouble(),
        description: json['description'],
        category: json['category'],
        rating: ProductRating.fromJson(json['rating']),
        image: json['image']);
  }
}

class ProductRating {
  double rate;
  int count;

  ProductRating({required this.rate, required this.count});
  factory ProductRating.fromJson(Map<String, dynamic> json) {
    return ProductRating(rate: json['rate'].toDouble(), count: json['count']);
  }
}
