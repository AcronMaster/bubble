import 'package:bubble/models/drink.dart';
import 'package:bubble/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;

  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
// customize sweet
  double sweetValue = 0.5;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  //customize ice
  double iceValue = 0.5;
  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  //costomize pearls
  double pearlsValue = 0.5;
  void customizePearls(double newValue) {
    setState(() {
      pearlsValue = newValue;
    });
  }

  //add to cart
  void addTocart() {
    //firstly.add to cart

    Provider.of<BubbleTeaShop>(context, listen: false).addTocart(widget.drink);

    //direct user back to shop page
    Navigator.pop(context);

    //let user kmow it has been succefully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drink.name),
      ),
      backgroundColor: Colors.brown[200],
      body: Column(children: [
        //drink images
        Image.asset(widget.drink.imagePath),

        //sliders to customize drink
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //sweet sliders
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text("Apple"),
                  ),
                  Expanded(
                    child: Slider(
                      value: sweetValue,
                      label: sweetValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizeSweet(value),
                    ),
                  )
                ],
              ),

              //ice sliders
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text("Mango"),
                  ),
                  Expanded(
                    child: Slider(
                      value: iceValue,
                      label: iceValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizeIce(value),
                    ),
                  )
                ],
              ),

              //perarls sliders
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 100,
                    child: Text("Matcha"),
                  ),
                  Expanded(
                    child: Slider(
                      value: pearlsValue,
                      label: pearlsValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizePearls(value),
                    ),
                  )
                ],
              ),

              // add to cart button
              MaterialButton(
                child: Text(
                  "Add to cart",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.brown,
                onPressed: addTocart,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
