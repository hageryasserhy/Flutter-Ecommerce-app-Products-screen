class ProductModel {
  final String? image;
  final String? title;
  final String? desc;
  final double? discountPercentage;
  final double? price;
  final double? rating;

  ProductModel({
    this.image,
    this.title,
    this.desc,
    this.price,
    this.discountPercentage,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    image: json['images'] != null && (json['images'] as List).isNotEmpty
        ? (json['images'] as List)[0]
        : null,
    title: json['title'],
    desc: json['description'],
    price: (json['price'] as num?)?.toDouble(),
    discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
    rating: (json['rating'] as num?)?.toDouble(),
  );
}
