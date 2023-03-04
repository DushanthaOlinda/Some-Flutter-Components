import 'package:first_flutter_app/models/product_model.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.productDetails}) : super(key: key);

  final ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(productDetails.productName),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: Text(productDetails.productName),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: Text(productDetails.productDetails),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: Text(productDetails.productSize),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: Text(productDetails.productType.toString()),
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_outlined),
            title: Text(productDetails.isTopProduct.toString()),
          ),
        ]),
      ),
    );
  }
}
