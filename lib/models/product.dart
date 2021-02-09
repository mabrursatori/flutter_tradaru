part of 'models.dart';

class Product extends Equatable {
  final String picture;
  final String name;
  final String description;
  final List<String> size;
  final List<Color> color;
  final double rating;
  bool isLiked;
  final double price;
  final double discout;

  Product(
      {this.picture,
      this.name,
      this.description,
      this.size,
      this.color,
      this.rating,
      this.isLiked,
      this.price,
      this.discout});

  @override
  List<Object> get props =>
      [picture, name, description, size, color, rating, isLiked];
}

List<Product> mockProduct = [
  Product(
      picture: 'baju.png',
      name: 'Simple Blouse',
      size: ['S', 'M', 'L', 'XL', 'XXL'],
      color: [Colors.red, Colors.blue, Colors.amber, Colors.green, Colors.grey],
      description:
          "Dalam dunia online marketing, penghubung antara seorang penjual dan pembeli adalah melalui media tulisan, gambar dan video. Jika dalam dunia nyata semua ini dikerjakan oleh seorang sales marketing yang menawarkan langsung kepada calon konsumen.",
      rating: 4.1,
      isLiked: true,
      price: 58,
      discout: 38),
  Product(
      picture: 'baju2.png',
      name: 'Sweet Sweater',
      size: ['S', 'M', 'L', 'XL', 'XXL'],
      color: [Colors.red, Colors.blue, Colors.amber, Colors.green, Colors.grey],
      description:
          "Dalam dunia online marketing, penghubung antara seorang penjual dan pembeli adalah melalui media tulisan, gambar dan video. Jika dalam dunia nyata semua ini dikerjakan oleh seorang sales marketing yang menawarkan langsung kepada calon konsumen.",
      rating: 4.1,
      isLiked: false,
      price: 58,
      discout: 38),
  Product(
      picture: 'baju3.png',
      name: 'Gamis Modern',
      size: ['S', 'M', 'L', 'XL', 'XXL'],
      color: [Colors.red, Colors.blue, Colors.amber, Colors.green, Colors.grey],
      description:
          "Dalam dunia online marketing, penghubung antara seorang penjual dan pembeli adalah melalui media tulisan, gambar dan video. Jika dalam dunia nyata semua ini dikerjakan oleh seorang sales marketing yang menawarkan langsung kepada calon konsumen.",
      rating: 4.1,
      isLiked: true,
      price: 58,
      discout: 38),
      Product(
      picture: 'baju.png',
      name: 'Simple Blouse',
      size: ['S', 'M', 'L', 'XL', 'XXL'],
      color: [Colors.red, Colors.blue, Colors.amber, Colors.green, Colors.grey],
      description:
          "Dalam dunia online marketing, penghubung antara seorang penjual dan pembeli adalah melalui media tulisan, gambar dan video. Jika dalam dunia nyata semua ini dikerjakan oleh seorang sales marketing yang menawarkan langsung kepada calon konsumen.",
      rating: 4.1,
      isLiked: true,
      price: 58,
      discout: 38),
];
