// ignore_for_file: file_names
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isrecommended,
      required this.ispopular});
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isrecommended;
  final bool ispopular;

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isrecommended, ispopular];
  static const List<Product> products = [
    Product(
        name: "GTA V",
        category: "Gamming",
        imageUrl:
            "https://media-rockstargames-com.akamaized.net/tina-uploads/posts/9k922a7212kao3/59a05cd4bc90a814ee52dceb30d70de2c1946953.jpg",
        price: 5.99,
        isrecommended: true,
        ispopular: false),
    Product(
        name: "PS5",
        category: "Gamming",
        imageUrl: "https://cdn.mena-tech.com/wp-content/uploads/2020/06/s2.jpg",
        price: 500,
        isrecommended: false,
        ispopular: true),
    Product(
        name: "Blue Channel",
        category: "MakeUp",
        imageUrl:
            "https://m.media-amazon.com/images/I/31euGcJocBL._AC_SY350_.jpg",
        price: 5.99,
        isrecommended: true,
        ispopular: true),
    Product(
        name: "MAC",
        category: "Techniques",
        imageUrl: "https://www.oberlo.com/media/1603969791-image-1.jpg",
        price: 1000,
        isrecommended: false,
        ispopular: true),
    Product(
        name: "NOOTBOOK",
        category: "Techniques",
        imageUrl:
            "https://cdn.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej-1280x720.png",
        price: 465,
        isrecommended: true,
        ispopular: false),
  ];
}
