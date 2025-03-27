import 'package:bubble/components/drink_tile.dart';
import 'package:bubble/models/drink.dart';
import 'package:bubble/models/shop.dart';
import 'package:bubble/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _CartPageState();
}

class _CartPageState extends State<ShopPage> {
  // user selection adrink, go to order page
  void goToOrderPage(Drink drink) {
    //navigate to order page
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPage(
            drink: drink,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //headding
            Text("Bubble Tea Shop", style: TextStyle(fontSize: 20)),

            const SizedBox(
              height: 10,
            ),

            //list of dinks for sale
            Expanded(
              child: ListView.builder(
                itemCount: value.shop.length,
                itemBuilder: (context, index) {
                  //get individual drink from shop
                  Drink individualDrink = value.shop[index];
                  // return that drink as a nice
                  return DrinkTile(
                    drink: individualDrink,
                    onTap: () => goToOrderPage(individualDrink),
                    trailing: Icon(Icons.arrow_forward),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
