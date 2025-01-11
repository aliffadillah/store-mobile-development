import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/cart_model.dart';
import '../pages/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  Map<String, double> cart = {};
  runApp(MaterialApp(
      home: HomeScreen(cart: Cart(cartMap: cart)),
      debugShowCheckedModeBanner: false));
}
