import 'package:flutter/material.dart';
import '../Form.dart';

enum ProductType { downloadable, deliverable }

class MyRadioButton extends StatelessWidget {
  const MyRadioButton({Key? key,
    required this.title,
    required this.value,
    required this.productType,
    required this.onChanged,}) : super(key: key);

  final String title;
  final ProductType value;
  final ProductType? productType;
  final Function(ProductType?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductType>(
        contentPadding: const EdgeInsets.all(0),
        title: Text(ProductType.deliverable.name),
        tileColor: Colors.deepPurple.shade50,
        value: ProductType.deliverable,
        groupValue: productType,
        dense: true,
        onChanged: onChanged,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0),),
        ),
      ),
    );
  }
}
