import 'package:bubble/models/drink.dart';

class BubbleTeaShop {
  // List of drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
    Drink(
        name: "Milk TEA",
        price: "20",
        imagePath: "assets/images/Bubble_Milk.png"),
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
  }

  //remove drink froom cart
  void removeFromCart(Drink drink) {
    _usercart.remove(drink);
  }
}
