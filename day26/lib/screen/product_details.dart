import 'package:day26/model/product_model.dart';
import 'package:flutter/material.dart';
class ProductDeatils extends StatefulWidget {
  int ?index;
  ProductDeatils({super.key, this.index});

  @override
  State<ProductDeatils> createState() => _ProductDeatilsState();
}

class _ProductDeatilsState extends State<ProductDeatils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new),
              Icon(Icons.card_travel),
            ],
          ),
          
        ],
      )
    );
  }
}