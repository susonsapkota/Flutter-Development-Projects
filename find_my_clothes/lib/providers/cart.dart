import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, item) {
      total += item.price * item.quantity;
    });
    return total;
  }

  void addItem(String prodId, double price, String title) {
    if (_items.containsKey(prodId)) {
      // if item is already present just want to increase the quantity
      _items.update(
        prodId,
        (existingCardItem) => CartItem(
            id: existingCardItem.id,
            title: existingCardItem.title,
            price: existingCardItem.price,
            quantity: existingCardItem.quantity + 1),
      );
    } else {
      //add a new item to the cart
      _items.putIfAbsent(
        prodId,
        () => CartItem(
            id: DateTime.now().toString(),
            title: title,
            quantity: 1,
            price: price),
      );
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
