import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _CartPageState();
}

class _CartPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          //headding
          Text("Bubble Tea Shop", style: TextStyle(fontSize: 20)),

          //list of dinks for sale
        ],
      ),
    ));
  }
}
