part of 'models.dart';

class Transaction extends Equatable {
  final Product product;
  final int quantity;
  final double total;

  Transaction({this.product, this.quantity, this.total});

  @override
  List<Object> get props => [product, quantity, total];
}
