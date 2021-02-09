part of 'models.dart';

class User extends Equatable {
  final String picture;
  final List<Transaction> transactions;

  User({this.picture, this.transactions});

  @override
  List<Object> get props => [picture, transactions];
}

User mockUser = User(
  picture: 'mabrur.png',
  transactions:[ Transaction(product: mockProduct[0], quantity: 1, total: 38.12)]
);
