import 'package:flutter/cupertino.dart';

class CartPage extends StatefulWidget {

  const CartPage({super.key});
  @override
  State<StatefulWidget> createState() => _CartPageState();

}

class _CartPageState extends State<CartPage>{

  @override
  Widget build(BuildContext context) {
    return const Text("Cart Page",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
  }

}