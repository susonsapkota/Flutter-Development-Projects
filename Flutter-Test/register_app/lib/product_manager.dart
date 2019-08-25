import 'package:flutter/material.dart';

import './products.dart';


class ProductManger extends StatefulWidget {
  final String startingProduct;
  ProductManger({this.startingProduct = 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    return _ProductMangerState();
  }
}

class _ProductMangerState extends State<ProductManger> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children : [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).accentColor,
        onPressed: () {
          setState(() {
            _products.add('Advance Tester');
          });
        },
        child: Text('Add Product'),
      ),
    ),
    Products(_products)
    ]);
  }
}
