import 'package:ecom/modules/Product.dart';
import 'package:equatable/equatable.dart';

class wishlist extends Equatable {
  final List<Product> products;
  @override
  List<Object?> get props => [products];
  const wishlist({this.products = const <Product>[]});
}
