// import 'package:first_flutter_app/widgets/my_radio_button.dart';
// import 'package:first_flutter_app/Form.dart';
import 'package:first_flutter_app/models/product_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import '../widgets/my_radio_button.dart';
import 'details.dart';

enum ProductType { Downloadable, Deliverable }

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  _MyFormState(){
    _selectVal = _productSizeList[0];
  }
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();

  bool? _check = false;
  bool? _checkbox = false;

  ProductType? _productType;
  final _productSizeList = ['Small', 'Medium', 'Large', 'XLarge', 'XXLarge'];
  String? _selectVal = "";

  final _formKey = GlobalKey<FormState>();
  ProductDetails productDetails = ProductDetails();

  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            
            Form(
              key: _formKey,
                child: Column(
                  children: [
                    MyTextField(
                        myController: _productController,
                        fieldName: 'Product Name',
                        myIcon: Icons.verified_user_outlined,
                        prefixIconColor: Colors.blueAccent),
                    const SizedBox(height: 10.0),
                    MyTextField(
                        myController: _productDesController,
                        fieldName: 'Product Description',
                        myIcon: Icons.description_outlined,
                        prefixIconColor: Colors.blueAccent),
                    const SizedBox(height: 10.0),
                    //Checkbox 1
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: Colors.deepPurple,
                          value: _check,
                          onChanged: (val) {
                            setState(() {
                              _check = val;
                            });
                          },
                        ),
                        const Text("Top Product",
                            style: TextStyle(color: Colors.deepPurple)),
                      ],
                    ),
                    // Checkbox list tile
                    CheckboxListTile(
                      title: const Text("Top Product"),
                      subtitle: const Text("Check me"),
                      secondary: const Icon(Icons.verified_user_outlined),
                      activeColor: Colors.deepPurple,
                      checkColor: Colors.white,
                      value: _checkbox,
                      onChanged: (val) {
                        setState(() {
                          _checkbox = val;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading, //Leadign Icon
                    ),
                    Row(
                        children:[
                          Expanded(
                            child: RadioListTile<ProductType>(
                                contentPadding: const EdgeInsets.all(0),
                                title: Text(ProductType.Deliverable.name),
                                tileColor: Colors.deepPurple.shade50,
                                value: ProductType.Deliverable,
                                dense: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                groupValue: _productType,
                                onChanged: (val) {
                                  setState(() {
                                    _productType = val;
                                  });
                                }),
                          ),
                          const SizedBox(width:5.0),
                          Expanded(
                            child: RadioListTile<ProductType>(
                                contentPadding: const EdgeInsets.all(0),
                                value: ProductType.Downloadable,
                                groupValue: _productType,
                                dense: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                ),
                                title: Text(ProductType.Downloadable.name),
                                tileColor: Colors.deepPurple.shade50,
                                onChanged: (val) {
                                  setState(() {
                                    _productType = val;
                                  });
                                }),
                          ),
                        ]
                    ),
                    // Row(
                    //   children: [
                    //     MyRadioButton(
                    //         title: ProductType.Deliverable.name,
                    //         value: ProductType.Deliverable,
                    //         productType: _productType,
                    //         onChanged: (val){
                    //           setState(() {
                    //             _productType = val;
                    //           });
                    //         }),
                    //   ],
                    // ),
                    const SizedBox(height: 20.0),
                    DropdownButton(
                        value: _selectVal,
                        items: _productSizeList.map(
                                (e) => DropdownMenuItem(value: e,child: Text(e),)
                        ).toList(),
                        onChanged: (val){
                          setState((){
                            _selectVal = val as String;
                          });
                        }),
                    const SizedBox(height: 20.0),
                    DropdownButtonFormField(

                      value: _selectVal,
                      items: _productSizeList.map(
                              (e) => DropdownMenuItem(value: e,child: Text(e),)
                      ).toList(),
                      onChanged: (val){
                        setState((){
                          _selectVal = val as String;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Colors.deepPurple,
                      ),
                      dropdownColor: Colors.deepPurple.shade50,
                      decoration: InputDecoration(
                        labelText: "Product Size",
                        prefixIcon: const Icon(
                          Icons.accessibility_new_rounded,
                          color: Colors.deepPurple,
                        ),
                        labelStyle: const TextStyle(color: Colors.deepPurple),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    myBtn(context),
                  ],
                ),),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ProductDetails productDetails = ProductDetails();
          productDetails.productName = _productController.text;
          productDetails.productDetails = _productDesController.text;
          productDetails.productSize = _selectVal!;
          productDetails.isTopProduct = _checkbox!;
          productDetails.productType = _productType!;

          Navigator.push(
            context, MaterialPageRoute(builder: (context) {
              return Details(productDetails: productDetails);
          })
          );
        }
      },
      child: Text("Submit Form".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        controller: myController,
        decoration: InputDecoration(
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          labelText: fieldName,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple),
        ),
      ),
    );
  }
}
