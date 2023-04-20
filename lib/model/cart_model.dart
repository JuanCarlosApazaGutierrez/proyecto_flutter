import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    ["Vegetables", "4.00", "lib/images/avocado.png", Colors.green],
    ["Fruits", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Meat", "12.80", "lib/images/chicken.png", Colors.brown],
    ["Otros", "1.00", "lib/images/water.png", Colors.blue],
  ];

  final List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;
//anade elemento
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }
//quita de la lista
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
 // calcula el total
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
