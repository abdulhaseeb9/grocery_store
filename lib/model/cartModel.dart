import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ["Avocado","5.00","lib/images/avocado.png",Colors.green],
    ["Banana","3.10","lib/images/banana.png",Colors.yellow],
    ["Chicken","15.55","lib/images/chicken.png",Colors.brown],
    ["Water","2.23","lib/images/water.png",Colors.blue],
  ];

  List _cartItems = [];
  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemtoCart(int index){
    _cartItems.add(_shopItems[index]);
        notifyListeners();
  }

  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }
  String calculateTotal(){
    double totalPrice=0;
    for (int i=0; i < _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}