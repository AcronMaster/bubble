import 'package:bubble/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier {
  // List of drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
    Drink(
        name: "Milk Tea", price: "20", imagePath: "lib/images/Bubble_milk.png"),
  ];
  //List of drinks in user cart
  final List<Drink> _usercart = [];
  //get drinks for sale
  List<Drink> get shop => _shop;
  // get user cart
  List<Drink> get cart => _usercart;
  // add dirnk to cart
  void addTocart(Drink drink) {
    _usercart.add(drink);
    notifyListeners();
  }

  //remove drink froom cart
  void removeFromCart(Drink drink) {
    _usercart.remove(drink);
    notifyListeners();
  }
}
